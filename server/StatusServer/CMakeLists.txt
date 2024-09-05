project(StatusServer)

add_executable(${PROJECT_NAME}
        AsioIOServicePool.cpp
        ChatGrpcClient.cpp
        ConfigMgr.cpp
        MysqlDao.cpp
        MysqlMgr.cpp
        RedisMgr.cpp
        StatusServer.cpp
        StatusServiceImpl.cpp

        AsioIOServicePool.h
        ChatGrpcClient.h
        ConfigMgr.h
        const.h
        MysqlDao.h
        MysqlMgr.h
        RedisMgr.h
        Singleton.h
        StatusServiceImpl.h
)

target_link_libraries(${PROJECT_NAME}
        PUBLIC
        protobuf::libprotobuf
        gRPC::grpc
        gRPC::grpc++

        ProtoMessage

        hiredis::hiredis redis++::redis++
        JsonCpp::JsonCpp
)

if(CMAKE_HOST_SYSTEM_NAME MATCHES "Darwin")
    target_link_libraries(${PROJECT_NAME}
            PUBLIC
            boost_filesystem
            ssl
            mysqlcppconn8.2
            mysqlcppconn
    )
else ()
    target_link_libraries(${PROJECT_NAME}
            PUBLIC
            mysqlcppconn8
            mysqlcppconn
    )
endif ()