# 任务

请你分别写一个客户端程序和服务器程序，客户端程序连接上服务器之后，通过敲命令和服务器进行交互，支持的交互命令包括：

pwd：显示服务器应用程序启动时的当前路径。

cd：改变服务器应用程序的当前路径。

ls：显示服务器应用程序当前路径下的文件列表。

quit：客户端进程退出，但是服务器端不能退出，第二个客户可以再次连接上服务器端。

**客户端程序要求：**

可以指定待连接的服务器端 IP 地址和端口。

在输入一个命令之后，回车结束，之后等待服务器端将执行结果返回，客户端程序需要将结果显示在屏幕上。

**服务器程序要求**

暂时不需要考虑多个客户并发连接的情形，只考虑每次服务一个客户连接。

要把命令执行的结果返回给已连接的客户端。

服务器端不能因为客户端退出就直接退出。

## 程序编写

### 服务端

* 在连接库 tcp_server.c 中编写连接函数 int tcp_server()
  * 配置监听套接字的属性：ipv4，数据流
  * 初始化服务端套接字的属性，设置套接字可重用
  * 将监听的连接和服务端套接字进行绑定 bind
  * 建立连接 accept
* 主函数
  * 在 while 循环中读取客户端传来的请求， 并对不同的请求作出对应的回应
    * 对于 "ls" 请求，FILE *popen(const char *command, const char *type); 函数创建一个 pipe 管道，将 command 命令的内容写入到管道中；然后读取管道的内容到缓存 data 中，结束后返回 data 给主程序
    * 对于 “pwd" 请求，通过库函数 char *getcwd(char *buf, size_t size); 复制当前目录的绝对路径到 buf 中
    * 对于“cd”请求，获取 cd 之后的内容，并使用库函数 int chdir(const char *path); 修改当前目录

### 客户端

* 在连接库 tcp_client.c 中，编写连接函数 int tcp_client(char *address, int port) 

  * 配置监听套接字的属性：pv4，数据流
  * 初始化服务端套接字的属性
  * connect 服务端

* 主函数

  * 客户端需要使用IO多路复用

    * 监听 socket ，若有数据可读，则把内容读出来

    * 监听标准输入，若有数据可读，则把内容发送出去

      

## 运行

在 build 目录下运行

```
cmake ../
make
```

或在 build 目录下运行

```
./clean.sh
./run.sh
```

在 build/bin 目录下运行程序

```
./telnet-server
```

```
./telnet-client 127.0.0.1 43211
```