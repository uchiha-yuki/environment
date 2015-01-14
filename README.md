## USEFUL COMMANDS
some common command for checking your environment
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
```
