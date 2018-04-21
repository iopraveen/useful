#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
echo $SCRIPTPATH


sudo ln -s $SCRIPTPATH/terminate.sh /usr/bin/terminate
sudo ln -s $SCRIPTPATH/terminate.sh /usr/local/bin/terminate
chmod +x  terminate.sh

