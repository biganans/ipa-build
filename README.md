# ipa-build  xcode脚本自动打包sh
  xcode 8 环境下Archive模式打包ipa
  xcode 8 use Archive package ipa
# how to use?  怎样使用
1.克隆当前工程 cd 到你想要放到目录 然后执行 git clone ...
  download this project to folder what you choose directory.
  git clone ...
2.确保一定 使这些文件在你的工程下面
  make sure put all download files to your project folder
3.修改APP_Build_Distribution.sh
  change APP_Build_Distribution.sh for your project
  out_path:这个参数是打包到什么文件夹 但是这个文件夹必须要先建立好
  out_path: the last ipa compiled directory,make sure this directory is exist
  target: 需要编译xcode的那个target
  target: xcode target 
  xcodeproj: xcode项目的名字 比如game.xcodeproj这里使用game
  xcodeproj: like game.xcodeproj is game
  ipa-build: 参数类型说明-c (Debug or Release) -m (model 0:developer 1:Distribution 2:enterprise)
  ipa-build: -c (Debug or Release) -m (model 0:developer 1:Distribution 2:enterprise)
4.打开终端 输入以下命令 请确保文件夹的权限为 -x 或者 777 你可以使用这样的语法再执行后面的命令 sudo chmod -R 777 ./
  open mac terminal,make the directory permission is -x or 777,you can use this command:
  cd xcodeproject_directory
  sudo chmod -R 777 ./
  then,use the fllow command.
  
  sh APP_Build_Distribution.sh
  
5.等啊等啊等，没有错误输出并显示：Congratulations iap is ok!! 就可以愉快的玩耍吧。
  wait,wait,at last,output:"Congratulations iap is ok!!",enjoy youself.
