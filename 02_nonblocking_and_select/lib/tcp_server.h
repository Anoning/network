#ifndef TCP_SERVER_H
#define TCP_SERVER_H
#include "common.h"

int tcp_server_listen();
int tcp_server_connect();
int tcp_nonblocking_server_listen(int);
void make_nonblocking(int);



#endif
