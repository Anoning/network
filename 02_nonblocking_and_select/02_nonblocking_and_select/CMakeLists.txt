add_executable(nonblocking_server nonblocking_server.c)
target_link_libraries(nonblocking_server YT)

add_executable(telnet-client telnet-client.c)
target_link_libraries(telnet-client YT)
