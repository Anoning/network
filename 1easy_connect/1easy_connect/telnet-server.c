//	
//	tcp_server 中：
//	不用IO多路复用，因为接收数据和发送数据都是在socket上进行
//	先配置socket属性，配置socket为可重用，配置地址结构体，
//	在bind中将socket与本机（服务器）地址进行绑定
//	然后listen 监听端口
//	
//	最后，把连接交给主程序
//
#include "lib/common.h"


#define MAXBUFFER 256	
char *run_cmd(char *cmd);

static int count;
static void sig_int(int signo){
	printf("\nreceived %d datagrams\n", count);
	exit(0);
}



int main(int argc, char **argv)
{
	
	int connfd = tcp_server();
	char buf[MAXBUFFER];
	count = 0;

	while (1)
	{	
		//if ((connfd = accept(listenfd, (struct sockaddr *)&client_addr, sizeof(client_addr))) < 0)
		//if ((connfd = accept(listenfd, (struct sockaddr *) &client_addr, &client_len)) < 0){
		//	error(1, errno, "connect failed！server side");
		//}
		
		
		// 这个服务器一次只能服务于一个客户端，直到这个客户端关闭后才能服务于其他客户端。	
		while (1) {
            bzero(buf, sizeof(buf));
            int n = read(connfd, buf, sizeof(buf));
            if (n < 0) {
                error(1, errno, "error read message");
            } else if (n == 0) {
                printf("client closed \n");
                close(connfd);
                break;
            }
            count++;
            buf[n] = 0;
            if (strncmp(buf, "ls", n) == 0) {
                char *result = run_cmd("ls");
                if (send(connfd, result, strlen(result), 0) < 0){
                    return 1;
                }
                free(result);
            } else if (strncmp(buf, "pwd", n) == 0) {
                char buf[256];
                char *result = getcwd(buf, 256);
                if (send(connfd, result, strlen(result), 0) < 0)
                    return 1;
            } else if (strncmp(buf, "cd ", 3) == 0) {
                char target[256];
                bzero(target, sizeof(target));
                memcpy(target, buf + 3, strlen(buf) - 3);
                if (chdir(target) == -1) {
                    printf("change dir failed, %s\n", target);
                }
            } else {
                char *error = "error: unknown input type";
                if (send(connfd, error, strlen(error), 0) < 0)
                    return 1;
            }
        }
	}
	exit(0);

}



char* run_cmd(char *cmd)
{
	char *data = malloc(16384);
	bzero(data, sizeof(data));
	FILE *fdp = popen(cmd, "r");
	char buffer[MAXBUFFER];
	char *data_index = data;
	if (fdp){
		while (!feof(fdp)){
			if (fgets(buffer, MAXBUFFER, fdp) != NULL){
				int len = strlen(buffer);
				memcpy(data_index, buffer, len);
				data_index += len;
			}
		}

		pclose(fdp);
	}
	return data;
}
