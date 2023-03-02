cmake_minimum_required(VERSION 3.10)

# project(PIGG_ECHO_TEST C CXX)
project(PIGG_ECHO_TEST VERSION 0.1.0 LANGUAGES CXX)
# enable_testing()

# if(NOT CMAKE_BUILD_TYPE)
#   set(CMAKE_BUILD_TYPE "Release")
# endif()

# only build examples if this is the main project
# if(CMAKE_PROJECT_NAME STREQUAL "muduo")
#   option(MUDUO_BUILD_EXAMPLES "Build Muduo examples" ON)
# endif()
message(WARNING "PROJECT_VERSION                    : ${CMAKE_LIBRARY_PATH}")          # CMake 警告, 会继续执行；


set(CXX_FLAGS
 -g
 # -DVALGRIND
 -DCHECK_PTHREAD_RETURN_VALUE
 -D_FILE_OFFSET_BITS=64
 -Wall
 -Wextra
 -Werror
 -Wconversion
 -Wno-unused-parameter
 -Wold-style-cast
 -Woverloaded-virtual
 -Wpointer-arith
 -Wshadow
 -Wwrite-strings
 -march=native
 # -MMD
 -std=c++11
 -rdynamic
 )


file(GLOB_RECURSE LOG_SRC_LIST "pigg_echo_server.cc")  
source_group(logserver FILES ${LOG_SRC_LIST})
add_executable(${PROJECT_NAME} ${LOG_SRC_LIST})

# add_executable(${PROJECT_NAME} "pigg_echo_server.cc")

include_directories(./thrid/include/)

# include_directories(./thrid/lib/)
# target_link_libraries(${PROJECT_NAME}  ../thrid/lib/libmuduo_base.a)
# target_link_libraries(${PROJECT_NAME}  ../thrid/lib/libmuduo_net.a)
# target_link_libraries(${PROJECT_NAME}  ../thrid/lib/libmuduo_http.a)
# target_link_libraries(${PROJECT_NAME}  ../thrid/lib/libmuduo_inspect.a)


target_link_libraries(${PROJECT_NAME}  libmuduo_base.a)
target_link_libraries(${PROJECT_NAME}  libmuduo_net.a)
# link_libraries("thrid/lib/libmuduo_base.a")
# link_libraries("thrid/lib/libmuduo_http.a")
# link_libraries("thrid/lib/libmuduo_inspect.a")
# link_libraries("thrid/lib/libmuduo_net.a")
# target_link_libraries(${PROJECT_NAME}  libmuduo_base.a)
# target_link_libraries(${PROJECT_NAME}  muduo_http.a)
# target_link_libraries(${PROJECT_NAME}  muduo_inspect.a)
# target_link_libraries(${PROJECT_NAME}  muduo_net.a)


SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin/release)   # 设置可执行文件的位置
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib/release)      # 设置动态链接库的位置

