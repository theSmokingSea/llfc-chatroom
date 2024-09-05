project(GateServer)

add_executable(${PROJECT_NAME}
        AsioIOServicePool.cpp
        ConfigMgr.cpp
        CServer.cpp
        GateServer.cpp
        HttpConnection.cpp
        LogicSystem.cpp

        MysqlDao.cpp
        MysqlMgr.cpp
        RedisMgr.cpp
        StatusGrpcClient.cpp
        VerifyGrpcClient.cpp
       
        AsioIOServicePool.h
        ConfigMgr.h
        const.h
        CServer.h
        HttpConnection.h
        LogicSystem.h

        MysqlDao.h
        MysqlMgr.h
        RedisMgr.h
        Singleton.h
        StatusGrpcClient.h
        VerifyGrpcClient.h
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