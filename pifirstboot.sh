#!/bin/bash

# This script does stuff to your Raspbian image
#
# By default it just sets SSH to on

# To add your own:
#
# Declarations      - set any default variables
# FunctionsGenerate - create a function to generate what you need but don't do anything

# FunctionDescribe - put a line in saying what is being done

##### Declarations - things you might want to hard code
BootDirPath=""

##### FunctionsGenerate

SSHEnable()
{
while [ !-f "$BootDirPath/kernel.img" ]; do
    read -p "Type the full path to the /boot directory (e.g. /media/boot)" BootDirPath
done
}


# FunctionsDo



##### FunctionDescribe

DescribeWhatYouAreDoing()
{
    echo "Dropping SSH in $BootDirPath"
}


done


VerifyAndDo()
{
while true; do
    DescribeWhatYouAreDoing
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
}

###EOF
