#!/bin/bash
cd "$(dirname "$0")"
#打包出来的位置
out_path="../../publish"
#删除所有的编译文件 确保每次重新编译
rm -rdf ./build/*
#需要编译哪个target
target=GAME_APP
#xcodeproj的名字
xcodeproj=GAME
#默认为develop的测试包 1 app发布包 2企业签名包
./ipa-build ./ -c Release -o ${out_path} -t $target -b $xcodeproj -m 1

