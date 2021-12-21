set(YT_lib
    	tcp_server.c
    	tcp_client.c
    )

add_library(YT ${YT_lib})
target_link_libraries(YT pthread)

install(TARGETS YT DESTINATION lib)

