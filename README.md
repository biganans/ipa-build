ipa-build  xcode脚本自动打包sh
====================
xcode 8 环境下Archive模式打包ipa <br>
xcode 8 use Archive package ipa

how to use?  怎样使用
-------------
* 克隆当前工程 cd 到你想要放到目录 然后执行 <br>
    download this project to folder what you choose directory. <br>

    $ git clone https://github.com/biganans/ipa-build.git

* 确保一定 使这些文件在你的工程下面 <br>
    Make sure put all download files to your project folder. <br>
* 修改APP_Build_Distribution.sh <br>
    change APP_Build_Distribution.sh for your project
    *  out_path:这个参数是打包到什么文件夹 但是这个文件夹必须要先建立好 <br>
        out_path: The last ipa compiled directory,make sure this directory is exist.
    *  target: 需要编译xcode的哪个target <br>
        target: xcode target
    *  xcodeproj: xcode项目的名字 比如game.xcodeproj这里使用game <br>
        xcodeproj: like game.xcodeproj is game
    *  ipa-build: 参数类型说明-c (Debug or Release) -m (model 0:developer 1:Distribution 2:enterprise) <br>
        open mac terminal,make the directory permission is -x or 777,you can use this command: <br>
        
        $ cd xcodeproject_directory 
        $ sudo chmod -R 777 ./ 
        
        then,use the fllow command.
        
        $ sh APP_Build_Distribution.sh
        
 * 等啊等啊等，没有错误输出并显示：Congratulations iap is ok!! 就可以愉快的玩耍吧。 <br>
        wait,wait,at last,output:"Congratulations iap is ok!!",enjoy youself.

Thanks 感激
----------
  ccf <br>
  KINET

