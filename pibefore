#!/bin/bash

# This script does stuff to your Raspbian image
#
# By default it just sets SSH to on

# To add your own:
#
# Declarations      - set any default variables
# FunctionsGenerate - create a function to generate needed data
# FunctionsDo       - make a function that does what you want
# FunctionDescribe  - put a line in saying what is being done
# Add your FunctionsDo to the Yy case line

##### Declarations - things you might want to hard code

BootDirPath=""

##### FunctionsGenerate

SSHEnable()
{
while [ ! -f "$BootDirPath/kernel.img" ]; do
    read -p "Full path to the /boot directory (e.g. /media/$USER/boot)" BootDirPath
done
}


# FunctionsDo

SSHEnableDo()
{
touch $BootDirPath/SSH
}

##### FunctionDescribe

DescribeWhatYouAreDoing()
{
    echo "Dropping SSH in $BootDirPath" # SSHEnable
}

VerifyAndDo()
{
while true; do
    DescribeWhatYouAreDoing
    read -p "Do you wish to make these changes?" yn
    case $yn in
        [Yy]* ) SSHEnableDo;exit;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
}

##### Get Usable Data

SSHEnable

VerifyAndDo








###EOF
