#!/bin/bash
caffe_root_dir=~/caffe
mkdir "$caffe_root_dir"
git clone https://github.com/BVLC/caffe.git "$caffe_root_dir"
cp caffe.Makefile.config "${caffe_root_dir}/Makefile.config"
read -p "Please modify Makefile.config according to your setup"
vim "${caffe_root_dir}/Makefile.config"
cd "$caffe_root_dir"
sudo mv ~/anaconda/lib/libm.so ~/anaconda/lib/libm.so.tmp
sudo mv ~/anaconda/lib/libm.so.6 ~/anaconda/lib/libm.so.6.tmp
read -p "how many threads you want to use to compile caffe" core
make all -j$core
make test -j$core
make pycaffe -j$core
make matcaffe -j$core
make distribute -j$core
make runtest -j$core
