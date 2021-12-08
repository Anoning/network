// 
//	created by YT 
//

#ifndef YT_COMMON_H  //我哭了，将ifndef写成ifdef导致整个库都连不上。。。。。
#define YT_COMMON_H


#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>  /*sockadd_in() and other Internet defns? */
#include <arpa/inet.h>
#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/un.h> /* for Unix domain sockets*/
#include <strings.h>
#include <pthread.h>


#include <sys/select.h>
#include <sys/sysctl.h>
#include <poll.h>

#ifdef EPOLL_ENABLE
#include <sys/epoll.h>
#endif

#include <fcntl.h> /*for nonblocking */
#include <sys/time.h> /* timeval() for select */
#include <time.h> /* timespec() for pselect()*/
#include <netdb.h>
#include <sys/stat.h> /* for S_xxx file mode constants? */
#include <sys/uio.h> /* for iovc{} and readv/writev */
#include <sys/ioctl.h>

void error(int status, int err, char *fmt, ...);
int tcp_server();//配置服务器
int tcp_client(char *address, int port); // 要连接的服务器的ip和端口


#define SERV_PORT 43211
#define MAXLINE 4096
#define UNIXSTR_PATH "/var/lib/unixstream.sock"
#define LISTENQ 1024
#define BUFFER_SIZE 4096


#endif //YT_COMMON_H
