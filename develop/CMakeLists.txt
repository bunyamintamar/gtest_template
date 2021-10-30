######### CMAKE VERSION ########################
cmake_minimum_required(VERSION 3.16)
set(This develop)

######### PROJECT NAME #########################
project(${This} C CXX)

######### FOLDERS ##############################

######### HEADERS - SOURCES ####################
file(GLOB SOURCES "*.cpp")

######### OTHERS ###############################
add_executable(main ${SOURCES})

######### LIBRARIES ############################
add_library(${This} STATIC ${SOURCES})