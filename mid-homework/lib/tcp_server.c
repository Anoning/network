//
//      不用IO多路复用，因为接收数据和发送数据都是在socket上进行。
//      在bind中将socket与本机（服务器）地址进行绑定
//      然后listen 监听端口
//      
//

#include "common.h"

int tcp_server(){
	int listen_fd;
	listen_fd = socket(AF_INET, SOCK_STREAM, 0);
	

	struct sockaddr_in server_addr;
	bzero(&server_addr, sizeof(server_addr));
	server_addr.sin_family = AF_INET;
	server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	server_addr.sin_port = htons(SERV_PORT);
	
	int on = 1;
	setsockopt(listen_fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));
	
	int rt1 = bind(listen_fd, (struct sockaddr *)&server_addr, sizeof(server_addr));

	if (rt1 < 0)
		error(1, errno, "bind failed");
		
	int rt2 = listen(listen_fd, LISTENQ);
	if (rt2 < 0)
		error(1, errno, "listen failed");
	
	return listen_fd;

}

