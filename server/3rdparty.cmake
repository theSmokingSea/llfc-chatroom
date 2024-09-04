# https://github.com/sewenew/redis-plus-plus.git
# https://github.com/tporadowski/redis.git
# brew install mysql-connector-c++

# boost
set(Boost_USE_STATIC_LIBS       ON)
set(Boost_USE_MULTITHREADED      ON)
set(Boost_USE_STATIC_RUNTIME    OFF)
set(Boost_NO_WARN_NEW_VERSIONS   ON)

if(CMAKE_HOST_SYSTEM_NAME MATCHES "Darwin")
    set(boost "/opt/homebrew/Cellar/boost/1.85.0")
    set(CMAKE_LIBRARY_PATH "${boost}/lib")
    set(CMAKE_INCLUDE_PATH  "${boost}/include")
    find_package(Boost COMPONENTS filesystem)
    link_directories("${boost}/lib")
    include_directories("${boost}/include")

    set(jsoncpp_DIR /Users/mp5530/Code/3rdparty/compile/jsoncpp_sdk/lib/cmake/jsoncpp)
    set(grpc_root_path "/Users/mp5530/Code/3rdparty/compile/grpc-sdk-1.6")
    set(grpc_cmake ${grpc_root_path}/lib/cmake)
    set(protobuf_ROOT_PATH ${grpc_root_path})
    #grpc
    list(APPEND CMAKE_PREFIX_PATH ${grpc_cmake})
    #protobuf
    list(APPEND CMAKE_PREFIX_PATH ${protobuf_ROOT_PATH}/cmake)
    set(Protobuf_USE_STATIC_LIBS ON)
    set(Protobuf_DIR ${protobuf_ROOT_PATH}/cmake)
    set(Protobuf_PREFIX_PATH
            "${protobuf_ROOT_PATH}/include"# /google/protobuf
            "${protobuf_ROOT_PATH}/lib"
            "${protobuf_ROOT_PATH}/bin" )
    list(APPEND CMAKE_PREFIX_PATH "${Protobuf_PREFIX_PATH}")

    set(hiredis_DIR /Users/mp5530/Code/3rdparty/compile/hiredis-sdk/lib/cmake/hiredis)
    set(redis++_DIR /Users/mp5530/Code/3rdparty/compile/redis-plus-plus-sdk/share/cmake/redis++)

    #    include_directories("/usr/local/mysql/include")
    #    link_directories("/usr/local/mysql/lib")

    #    set(mysql-concpp_DIR "/opt/homebrew/Cellar/mysql-connector-c++/9.0.0")
    #    find_package(mysql-concpp)
else ()
    set(boost D:/CodeDev/3rdparty/boost_1_85_0_sdk)
    set(CMAKE_LIBRARY_PATH "${boost}/lib")
    set(CMAKE_INCLUDE_PATH  "${boost}/include/boost-1_85")
    find_package(Boost COMPONENTS filesystem)
    link_directories("${boost}/lib")
    include_directories("${boost}/include/boost-1_85")

    set(grpc_root_path "D:/CodeDev/3rdparty/grpc-2022")
    set(grpc_cmake ${grpc_root_path}/lib/cmake)
    set(protobuf_ROOT_PATH ${grpc_root_path})
    #grpc
    list(APPEND CMAKE_PREFIX_PATH ${grpc_cmake})
    #protobuf
    list(APPEND CMAKE_PREFIX_PATH ${protobuf_ROOT_PATH}/cmake)
    set(Protobuf_USE_STATIC_LIBS ON)
    set(Protobuf_DIR ${protobuf_ROOT_PATH}/cmake)
    set(Protobuf_PREFIX_PATH
            "${protobuf_ROOT_PATH}/include"
            "${protobuf_ROOT_PATH}/lib"
            "${protobuf_ROOT_PATH}/bin" )
    list(APPEND CMAKE_PREFIX_PATH "${Protobuf_PREFIX_PATH}")

    set(jsoncpp_DIR D:/CodeDev/3rdparty/jsoncpp_sdk/lib/cmake/jsoncpp)
    set(hiredis_DIR D:/CodeDev/3rdparty/hiredis_sdk/share/hiredis)
    set(redis++_DIR D:/CodeDev/3rdparty/redis++/share/cmake/redis++)
    link_directories("C:/Program Files/MySQL/Connector C++ 8.0/lib64/vs14")
endif()


find_package(protobuf CONFIG REQUIRED)
find_package(gRPC CONFIG  REQUIRED)

find_package(hiredis REQUIRED)
find_package(redis++ REQUIRED)
find_package(jsoncpp REQUIRED)
