# 任务

在1easy_connect的基础上，添加非阻塞 IO + select 多路复用。对服务端采用 select IO多路复用，并采用非阻塞的模式监听多个连接。

## 程序编写

### 服务端

* 在连接库 tcp_server.c 中编写非阻塞连接函数 int tcp_nonblocking_server_listen(int port)

  * 建立监听，将监听设为非阻塞
  * 初始化服务端套接字的属性，设置套接字可重用
  * 将监听的连接和服务端套接字进行绑定

* Buffer对象

  每个Buffer对象管理一个连接，管理的内容包含：文件描述符 fd 、接收的数据 buf 以及 数据可读性。

* 读套接字的函数

  访问文件描述符，数据还没到达/数据读取完毕时结束循环，将读入的数据保存到对应 Buffer 对象的缓存区 buf 中，并将该对象的可读位置1。

* 写套接字的函数

  从 Buffer 对象的缓存区 buf 中取出数据，并根据数据进行相应的操作，将响应结果传送给客户端，清空缓冲区并将可读位置0。

* 主函数

  监听连接，初始化 Buffer对象，初始化读写位，开启while循环：

  * 将监听到的连接置为读位，FD_SET(listen_fd, &readset); 
  * 通过 for 循环更新最大的套接字，若某对象的可读位为1，则置写位FD_SET(buffer[i]->conn_fd , &writeset); 并更新到select函数中
  * 建立连接，并将该连接记录到 Buffer 对象中
  * 通过 for 循环访问文件描述符，文件描述符可读时读取客户端发送来的内容；文件描述符可写时将回复发送给客户端

### 客户端

和01_easy_connect的一样。



## 运行

在 build 目录里先清空以前 CMAKE 的内容

```
./clean.sh
```

然后通过 run 脚本运行 CMAKE

```
./run.sh
```

打开 bin 目录，运行里面的程序，可以开启多个终端运行客户端

```
./nonblocking_server
```

```
./telnet-client
```

