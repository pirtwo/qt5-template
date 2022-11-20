cmake_minimum_required(VERSION 3.16)

project(proj CXX)

set(src_files src/main.cpp)
set(inc_files include/window.hpp)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED 20)
set(CMAKE_CXX_FLAGS "-pedantic -Wall -Wextra")

if(UNIX)
    # add unix options here
endif()

if(WIN32)
   set(CMAKE_WIN32_EXECUTABLE ON)
endif()

include(CTest)
enable_testing()

find_package(Qt5 COMPONENTS Core Widgets REQUIRED)

add_executable(${PROJECT_NAME} ${src_files} ${inc_files})

target_include_directories(${PROJECT_NAME} PUBLIC include)

target_link_libraries(${PROJECT_NAME} Qt5::Core Qt5::Widgets)