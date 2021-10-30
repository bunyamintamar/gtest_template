#!/bin/bash

rebuild_test(){
    delete_build_folder
    mkdir BUILD
    build_test
}

build_test(){
    cd BUILD
    cmake ..
    make clean
    make
    test/codeTest
}

rebuild_app(){
    delete_build_folder
    mkdir BUILD
    build_app
}

build_app(){
    cd BUILD
    cmake ../develop
    make clean
    make
    rm -r cmake* CMakeCache.txt CMakeFiles/
    ./main
}

Clean(){
    cd BUILD
    make clean
}

Cmake(){
    cd BUILD
    cmake ..
}

delete_build_folder(){
    if [ -d "BUILD" ]
    then
        rm -r BUILD
    fi
}

case $1 in
    delete_build_folder) "$@"; exit;;
    rebuild_test)        "$@"; exit;;
    build_test)          "$@"; exit;;
    rebuild_app)         "$@"; exit;;
    build_app)           "$@"; exit;;
    Clean)               "$@"; exit;;
    Cmake)               "$@"; exit;;
esac

delete_build_folder
rebuild_test
build_test
rebuild_app
build_app
Clean
Cmake
