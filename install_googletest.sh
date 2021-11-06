#!/bin/bash

echo ----------------------------------------------------
echo WELLCOME TO GOOGLETEST INSTALLER
echo ----------------------------------------------------
echo

# reinstall exist cmake
sudo apt-get remove cmake -y
sudo apt-get install cmake -y
sudo apt-get update
echo ----------------------------------------------------
echo CMAKE reinstalled
echo ----------------------------------------------------

# download googletest
cd ~/Desktop/
sudo mkdir temporary_googletest
cd temporary_googletest
sudo git clone https://github.com/google/googletest.git
echo ----------------------------------------------------
echo googletest cloned
echo ----------------------------------------------------

# compile googletest
cd googletest
sudo cmake CMakeLists.txt
sudo make
echo ----------------------------------------------------
echo googletest compiled
echo ----------------------------------------------------

# copy gtest folder to usr/include/
cd googletest/include
sudo rm -r /usr/include/gtest
sudo cp -r gtest /usr/include/
echo ----------------------------------------------------
echo gtest header files copied
echo ----------------------------------------------------

# copy lib files to usr/lib/
cd .. # googletest
cd .. # googletest
cd lib
sudo rm /usr/lib/libgmock*
sudo rm /usr/lib/libgtest*
sudo cp * /usr/lib/
echo ----------------------------------------------------
echo gtest lib files copied
echo ----------------------------------------------------

# delete temporary folder
cd ~/Desktop/
sudo rm -r temporary_googletest
echo ----------------------------------------------------
echo COMPLETED
echo ----------------------------------------------------

###

echo
echo
echo
echo ----------------------------------------------------
echo written by BUNYAMIN TAMAR - bunyamintamar@yandex.com
echo https://www.linkedin.com/in/bunyamintamar
echo ----------------------------------------------------
echo good luck!
echo
