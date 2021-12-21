#include "lib/common.h"
#define MAX_LINE 1024
#define FD_INIT_SIZE 128
#define MAXBUFFER 1024

char *run_cmd(char *cmd);
struct Buffer
{
	int conn_fd;
	char buf[MAXBUFFER];
	int readable;
};

struct Buffer *alloc_Buffer()
{
	struct Buffer *buffer = malloc(sizeof(struct Buffer));
	if (!buffer) return NULL;
	buffer->conn_fd = 0;
	buffer->readable = 0;
	return buffer;
}

void free_Buffer(struct Buffer *buffer) 
{
    free(buffer);
}


int onSocketRead(int fd, struct Buffer *buffer)
{
	ssize_t n;

	while(1)
	{
		n = recv(fd, buffer->buf, sizeof(buffer->buf), 0);
		if (n <= 0) break; // 1、还不能读时会结束循环，2、读完之后，再读取时会结束循环
		buffer->readable = 1; // 缓冲区可读
	}
	if (n == 0)	return 1;
	else if (n < 0)
	{
		if (errno == EAGAIN) return 0;
		return -1;
	}
	return 0;
}

int onSocketWrite(int fd, struct Buffer *buffer)
{
	if (strncmp(buffer->buf, "ls", strlen(buffer->buf)) == 0)
	{
		char *result = run_cmd("ls");
		if (send(fd, result, strlen(result), 0) < 0)
		{
			if (errno == EAGAIN)
                		return 0;
            		return -1;
		}
	free(result);
 	}
 	else if (strncmp(buffer->buf, "pwd", strlen(buffer->buf)) == 0)
 	{
		char buf[256];
		char *result = getcwd(buf, 256);
		if (send(fd, result, strlen(result), 0) < 0)
		{
			if (errno == EAGAIN)
                		return 0;
            		return -1;
		}
	}
	else if (strncmp(buffer->buf, "cd ", 3) == 0)
	{
		char target[256];
		bzero(target, sizeof(target));
		memcpy(target, buffer->buf + 3, strlen(buffer->buf) - 3);
		if (chdir(target) == -1) 
		{
			printf("change dir failed, %s\n", target);
		}
	}
	else
	{
		char *error = "error: unknown input type";
		if (send(fd, error, strlen(error), 0) < 0)
		{
			if (errno == EAGAIN)
                		return 0;
            		return -1;
		}
	}
	bzero(buffer->buf, sizeof(buffer->buf));  //读完需要清空缓存
	buffer->readable = 0;
	return 0;
}

int main(int argc, char **argv)
{

	int listen_fd = tcp_nonblocking_server_listen(SERV_PORT);

	struct Buffer *buffer[FD_INIT_SIZE];
	for (int i = 0; i < FD_INIT_SIZE; ++i)
	{
		buffer[i] = alloc_Buffer();
	}

	fd_set readset, writeset, exset;
	FD_ZERO(&readset);
	FD_ZERO(&writeset);
	FD_ZERO(&exset);

    	int maxfd;
	while (1)
	{
		maxfd = listen_fd;
		FD_ZERO(&readset);
   		FD_ZERO(&writeset);
		FD_ZERO(&exset);

		FD_SET(listen_fd, &readset);

		// 找到最大的套接字，并设可读位
		for (int i = 0; i < FD_INIT_SIZE; ++i)
   		{
	 		if (buffer[i]->conn_fd > 0)
     			{
		 		if (buffer[i]->conn_fd  > maxfd)
 			 	{
 			 		maxfd = buffer[i]->conn_fd ;
 			 	}
		 		FD_SET(buffer[i]->conn_fd , &readset);
 			 	if (buffer[i]->readable)
 			 	{
 			 		FD_SET(buffer[i]->conn_fd , &writeset);
		 	 	}
   		 	}
		 }

  	 	if (select(maxfd + 1, &readset, &writeset, &exset, NULL) < 0)
  	 	{
			 error(1, errno, "select error");
		}
		// 可建立连接，则accept
		if (FD_ISSET(listen_fd, &readset))
		{
  			printf("listening socket readable\n");
  			//sleep(5);
  			struct sockaddr_storage ss;
  			socklen_t slen = sizeof(ss);
  			int fd = accept(listen_fd, (struct sockaddr *) &ss, &slen);
  			if (fd < 0)
  			{
      				error(1, errno, "accept failed");
  			}
  			else if (fd > FD_INIT_SIZE)
  			{
      				error(1, 0, "too many connections1");
      				close(fd);
  			}
  			else
  			{
      				make_nonblocking(fd);
      				if (buffer[fd]->conn_fd  == 0)
      				{
          				buffer[fd]->conn_fd  = fd;
      				}
      				else
      				{
          				error(1, 0, "too many connections2");
				}
			}
    		}

        	// 在while(1)循环里面循环访问连接
		for (int i = 0; i < maxfd + 1; ++i)
		{
  			if (i == listen_fd) // 为什么？因为它还没有进入到寻找最大套接字的那个函数中。且还没accept连接
  				continue;
  			int r = 0;
  			if (FD_ISSET(i, &readset))
  			{
    				r = onSocketRead(i, buffer[i]);
			}
  			if (r == 0 && FD_ISSET(i, &writeset))
  			{
				r = onSocketWrite(i, buffer[i]);
			}
  			if (r)
  			{
      				buffer[i]->conn_fd  = 0;
      				close(i);
  			}
  		}
	}
}

char* run_cmd(char *cmd)
{
	char *data = malloc(16384);
	bzero(data, sizeof(data));
	FILE *fdp = popen(cmd, "r");
	char buffer[MAXBUFFER];
	char *data_index = data;
	if (fdp)
	{
		while (!feof(fdp))
		{
			if (fgets(buffer, MAXBUFFER, fdp) != NULL)
			{
				int len = strlen(buffer);
				memcpy(data_index, buffer, len);
				data_index += len;
			}
		}
		pclose(fdp);
	}
	return data;
}
