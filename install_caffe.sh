#!/bin/bash
caffe_root_dir=~
git clone https://github.com/BVLC/caffe.git "$caffe_root_dir"
cp caffe.Makefile.config "${caffe_root_dir}/Makefile.config"
read -p "Please modify Makefile.config according to your setup"
vim "${caffe_root_dir}/Makefile.config"
make all -j32
make test
make runtest
make pycaffe
make matcaffe
make distribute
