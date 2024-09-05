project(server)

add_definitions(-D_WIN32_WINNT=0x0601 )

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_subdirectory(ProtoMessage)
add_subdirectory(ChatServer)
add_subdirectory(ChatServer2)
add_subdirectory(StatusServer)
add_subdirectory(GateServer)
