project(ChatSever2)

add_executable(${PROJECT_NAME}
    AsioIOServicePool.cpp
    ChatGrpcClient.cpp
    ChatServer.cpp
    ChatServiceImpl.cpp
    ConfigMgr.cpp
    CServer.cpp
    CSession.cpp
    LogicSystem.cpp
    MsgNode.cpp
    MysqlDao.cpp
    MysqlMgr.cpp
    RedisMgr.cpp
    StatusGrpcClient.cpp
    UserMgr.cpp
    AsioIOServicePool.h
    ChatGrpcClient.h
    ChatServiceImpl.h
    ConfigMgr.h
    const.h
    CServer.h
    CSession.h
    data.h
    LogicSystem.h
    MsgNode.h
    MysqlDao.h
    MysqlMgr.h
    RedisMgr.h
    Singleton.h
    StatusGrpcClient.h
    UserMgr.h
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