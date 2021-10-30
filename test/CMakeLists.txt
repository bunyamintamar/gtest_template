#  This file was created automatically - [BUNYAMIN TAMAR]
#
#  USAGE
#  Please add lib file of your application to LIBRARIES block below


######### CMAKE VERSION ########################
cmake_minimum_required(VERSION 3.16)
set(This codeTest)

######### PROJECT NAME #########################
project(${This} C CXX)

######### HEADERS - SOURCES ####################
file(GLOB SOURCES "*.cpp")

######### OTHERS ###############################
add_executable(${This} ${SOURCES})

######### LIBRARIES ############################
target_link_libraries(${This} PUBLIC
    gtest     # MUST BE ADDED
    pthread   # MUST BE ADDED
    develop   #     <--------------- user lib(s)
)