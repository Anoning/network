#add_executable(telnet-client telnet-client.c)
#target_link_libraries(telnet-client YT)
#
#add_executable(telnet-server telnet-server.c)
#target_link_libraries(telnet-server YT) #这里写成了(telnet-client YT)，导致我一晚都没编译通过呜呜呜

add_executable(telnet-client telnet-client.c)
target_link_libraries(telnet-client YT)

add_executable(telnet-server telnet-server.c)
target_link_libraries(telnet-server YT)
