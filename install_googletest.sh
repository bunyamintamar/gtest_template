#!/bin/bash

echo ----------------------------------------------------
echo WELLCOME TO GOOGLETEST INSTALLER
echo ----------------------------------------------------
echo

# download googletest
cd ~/Desktop/
sudo mkdir temporary_googletest
cd temporary_googletest
sudo git clone https://github.com/google/googletest.git

# compile googletest
cd googletest
sudo cmake CMakeLists.txt
sudo make

# copy gtest folder to usr/include/
cd googletest/include
sudo cp -r gtest /usr/include/

# copy lib files to usr/lib/
cd .. # googletest
cd .. # googletest
cd lib
sudo cp * /usr/lib/

# delete temporary folder
cd ~/Desktop/
sudo rm -r temporary_googletest

###

echo
echo
echo
echo ----------------------------------------------------
echo written by BUNYAMIN TAMAR - bunyamintamar@yandex.com
echo ----------------------------------------------------
echo good luck!
echo
