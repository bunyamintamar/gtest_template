######### CMAKE VERSION ########################
cmake_minimum_required(VERSION 3.16)
set(This myProject)

######### PROJECT NAME #########################
project(${This} C CXX)

######### FOLDERS ##############################
add_subdirectory(develop)
add_subdirectory(test)