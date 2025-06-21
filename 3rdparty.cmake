# redis 配置下载
# https://github.com/sewenew/redis-plus-plus.git
# https://github.com/tporadowski/redis.git

# mysql connector jdbc 环境下载 配置路径如下
# include_directories("/usr/local/mysql-connector-c++-9.0.0/include")
# link_directories("/usr/local/mysql-connector-c++-9.0.0/lib64")
# https://dev.mysql.com/downloads/connector/cpp/
# 需要将 /usr/local/mysql-connector-c++-9.0.0/lib64 的 libssl.3.dylib 复制到对应的bin目录下

if(CMAKE_HOST_SYSTEM_NAME MATCHES "Darwin")
    list(APPEND CMAKE_PREFIX_PATH /Users/mp5530/Code/3rdparty/compile/boost_1_87_sdk)
    list(APPEND CMAKE_PREFIX_PATH /Users/mp5530/Code/3rdparty/compile/Qt6.8/6.8.1/macos)

    set(qt_required_components Core Widgets Gui Network )
    find_package(Qt6 COMPONENTS ${qt_required_components}  REQUIRED)

    cmake_policy(SET CMP0167 NEW)
    find_package(Boost COMPONENTS filesystem)

    set(jsoncpp_DIR /Users/mp5530/Code/3rdparty/compile/jsoncpp_sdk/lib/cmake/jsoncpp)
    set(grpc_root_path "/Users/mp5530/Code/3rdparty/compile/grpc-sdk-1.6")
    set(grpc_cmake ${grpc_root_path}/lib/cmake)
    set(protobuf_ROOT_PATH ${grpc_root_path})
    #grpc protobuf
    list(APPEND CMAKE_PREFIX_PATH ${grpc_cmake})
    list(APPEND CMAKE_PREFIX_PATH ${protobuf_ROOT_PATH}/cmake)
    set(Protobuf_USE_STATIC_LIBS ON)
    set(Protobuf_DIR ${protobuf_ROOT_PATH}/cmake)
    set(Protobuf_PREFIX_PATH
            "${protobuf_ROOT_PATH}/include"# /google/protobuf
            "${protobuf_ROOT_PATH}/lib"
            "${protobuf_ROOT_PATH}/bin" )
    list(APPEND CMAKE_PREFIX_PATH "${Protobuf_PREFIX_PATH}")

    set(hiredis_DIR /Users/mp5530/Code/3rdparty/compile/hiredis-sdk/lib/cmake/hiredis)
    # https://github.com/sewenew/redis-plus-plus.git
    set(redis++_DIR /Users/mp5530/Code/3rdparty/compile/redis-plus-plus-sdk/share/cmake/redis++)

    include_directories("/usr/local/mysql-connector-c++-9.0.0/include")
    link_directories("/usr/local/mysql-connector-c++-9.0.0/lib64")
else ()
    set(Qt5_DIR C:/Software/DevTools/Qt/Qt5.15.2/5.15.2/msvc2019_64/lib/cmake/Qt5)
    set(boost_grpc_root C:/DevCode/3rdparty)

    set(boost "${boost_grpc_root}/boost_1_85_0_sdk")
    set(CMAKE_LIBRARY_PATH "${boost}/lib")
    set(CMAKE_INCLUDE_PATH  "${boost}/include/boost-1_85")
    find_package(Boost COMPONENTS filesystem)
    link_directories("${boost}/lib")
    include_directories("${boost}/include/boost-1_85")

    set(grpc_root_path "${boost_grpc_root}/grpc-2022")
    set(grpc_cmake ${grpc_root_path}/lib/cmake)
    set(protobuf_ROOT_PATH ${grpc_root_path})
    #grpc protobuf
    list(APPEND CMAKE_PREFIX_PATH ${grpc_cmake})
    list(APPEND CMAKE_PREFIX_PATH ${protobuf_ROOT_PATH}/cmake)
    set(Protobuf_USE_STATIC_LIBS ON)
    set(Protobuf_DIR ${protobuf_ROOT_PATH}/cmake)
    set(Protobuf_PREFIX_PATH
            "${protobuf_ROOT_PATH}/include"
            "${protobuf_ROOT_PATH}/lib"
            "${protobuf_ROOT_PATH}/bin" )
    list(APPEND CMAKE_PREFIX_PATH "${Protobuf_PREFIX_PATH}")

    set(other_root ${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/win64)
    message(${CMAKE_CURRENT_SOURCE_DIR})
    set(jsoncpp_DIR ${other_root}/jsoncpp_sdk/lib/cmake/jsoncpp)
    set(hiredis_DIR ${other_root}/hiredis_sdk/share/hiredis)
    set(redis++_DIR ${other_root}/redis++/share/cmake/redis++)
    message(${hiredis_DIR})

    include_directories("C:/Program Files/MySQL/Connector C++ 8.0/include")
    link_directories("C:/Program Files/MySQL/Connector C++ 8.0/lib64/vs14")
endif()


find_package(protobuf CONFIG REQUIRED)
find_package(gRPC CONFIG  REQUIRED)

find_package(hiredis REQUIRED)
find_package(redis++ REQUIRED)
find_package(jsoncpp REQUIRED)
