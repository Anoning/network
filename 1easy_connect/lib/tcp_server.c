//
//      不用IO多路复用，因为接收数据和发送数据都是在socket上进行。
//      在bind中将socket与本机（服务器）地址进行绑定
//      然后listen 监听端口
//      
//

#include "common.h"

int tcp_server(){
	int listenfd;
	listenfd = socket(AF_INET, SOCK_STREAM, 0);
	

	struct sockaddr_in server_addr;
	bzero(&server_addr, sizeof(server_addr));
	server_addr.sin_family = AF_INET;
	server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	server_addr.sin_port = htons(SERV_PORT);
	
	int on = 1;
	setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));
	
	int rt1 = bind(listenfd, (struct sockaddr *)&server_addr, sizeof(server_addr));

	if (rt1 < 0)
		error(1, errno, "bind failed");
		
	int rt2 = listen(listenfd, LISTENQ);
	if (rt2 < 0)
		error(1, errno, "listen failed");
	
	//return listenfd;
	int connfd;
	signal(SIGPIPE, SIG_IGN);
	struct sockaddr_in client_addr;
	socklen_t client_len = sizeof(client_addr);
	if ((connfd = accept(listenfd, (struct sockaddr *) &client_addr, &client_len)) < 0){
			error(1, errno, "connect failed！server side");
		}
	return connfd;

}

