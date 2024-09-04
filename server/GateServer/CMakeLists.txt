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

        hiredis::hiredis redis++::redis++
        JsonCpp::JsonCpp

        mysqlcppconn8
        mysqlcppconn

        ProtoMessage
)

