## DESCRIPTION

This file lists some useful linux commands with comments

## USEFUL COMMANDS

```
# check for cuda version
nvcc --version
# check for NVIDIA graphic card driver version
nvidia-smi
# check for system version
lsb_release -a
# check for 32bit or 64bit
file /sbin/init
uname -a
# check for glibc version
ldd --version
#-save-temmps flag instructs compiler to store the temporary intermediate files used by the gcc compiler in the current directory
gcc -Wall -save-temps print.c -o print
# trace system call and signals
strace programname
# explore ELF file
readelf -l programname
# get ld search path
ld --verbose
ldconfig --verbose
# download file from remote
sftp username@remote_IP
get remotefile
get remotefile localfile
get -r remotedir
# upload file to remote
sftp username@remote_IP
put localfile
put -r localdir
# check usage status of disk
df -h
# check for installed package
dpkg -l | grep "^ii"
# list tag in repo
git tag
# show commits have tags
git log --decorate --simplify-by-decorate --tags
# use checkinstall instead of make install
sudo checkinstall 
# only produce .deb
sudo checkinstall --install=no
# install package with a specific version
sudo apt-get install packagename=version
# consult package in apt
apt-cache poligy packagename
# which files are included by .deb
dpkg --contents *.deb
# install local .deb and resolve it's dependency
sudo gbedi *.deb
# install local .deb
sudo dpkg -i *.deb
# remove package
sudo dpkg -r package name
# create shortcut for command
alias shortcut=command
# check what a shortcut is
type command
```
