//
//	客户端需要使用IO多路复用，
//	1、监听socket，若有数据可读，则把内容读出来
//	2、监听标准输入，若有数据可读，则把内容发送出去
//
//


#include "lib/common.h"

#define MAXLINE 1024

int main(int argc, char **argv){
	if (argc!=3)
	{
		error(1, 0, "usage: tcp_client <ipaddress> <port>");
	}
	int port = atoi(argv[2]);
	int socket_fd = tcp_client(argv[1], port);

	char recv_line[MAXLINE], send_line[MAXLINE];
	int n;

	fd_set readmask;
	fd_set allreads;
	FD_ZERO(&allreads);
	FD_SET(0, &allreads);
	FD_SET(socket_fd, &allreads);

	while(1)
	{
		readmask = allreads;
		int rc = select(socket_fd+1, &readmask, NULL, NULL, NULL);
		if (rc <= 0)
		{
			error(1, errno, "select failed");
		}
		if (FD_ISSET(socket_fd, &readmask))
		{
			n = read(socket_fd, recv_line, MAXLINE);
			if (n < 0)
			{
				error(1, errno, "read error");
			}
			else if (n == 0)
			{
				printf("server closed\n");
				break;
			}
			recv_line[n]=0;
			fputs(recv_line, stdout);
			fputs("\n", stdout);
			
		}
		if (FD_ISSET(STDIN_FILENO, &readmask))
		{
			if (fgets(send_line, MAXLINE, stdin) != NULL)
			{
				int i =strlen(send_line);
				if (send_line[i-1] == '\n')
				{
					send_line[i-1] = 0;
				}
			

				if (strncmp(send_line, "quit", strlen(send_line)) == 0)
				{
					if (shutdown(socket_fd, 1))
					{
						error(1, errno, "shutdown faile");
					}
				}	

				size_t rt = write(socket_fd, send_line, strlen(send_line));
				if (rt < 0)
				{
					error(1, errno, "write error");
				}
			}
		}	

	}
	struct linger ling;
    	ling.l_onoff = 1;
	ling.l_linger = 0;
	setsockopt(socket_fd, SOL_SOCKET, SO_LINGER, &ling, sizeof(ling));
	close(socket_fd);
	exit(0);
}



