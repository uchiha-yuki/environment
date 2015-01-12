#!/bin/bash
cd
wget http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-2.1.0-Linux-x86_64.sh
installer="Anaconda-2.1.0-Linux-x86_64.sh"
chmod +x "$installer"
sudo "./$installer"
rm "$installer"
