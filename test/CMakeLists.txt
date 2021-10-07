######### CMAKE VERSION ########################
cmake_minimum_required(VERSION 3.16)
set(This codeTest)

######### PROJECT NAME #########################
project(${This} C CXX)

######### FOLDERS ##############################
add_subdirectory(googletest)
include_directories(googletest/include)

######### HEADERS - SOURCES ####################
file(GLOB SOURCES "*.cpp")

######### OTHERS ###############################
add_executable(${This} ${SOURCES})

######### LIBRARIES ############################
target_link_libraries(${This} PUBLIC
    gtest
    myProject
)

################################################
# Bunyamin TAMAR - bunyamintamar@yandex.com
################################################