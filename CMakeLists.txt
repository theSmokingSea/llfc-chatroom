cmake_minimum_required(VERSION 3.29)

project(chatroom)

set(CMAKE_CXX_STANDARD 17)

add_subdirectory(client/llfcchat)
add_subdirectory(server)