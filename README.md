ipa-build  xcode脚本自动打包sh
====================
xcode 8 环境下Archive模式打包ipa    
xcode 8 use Archive package ipa

how to use?  怎样使用
-------------
* 克隆当前工程 cd 到你想要放到目录 然后执行    
    download this project to folder what you choose directory.    
```
    $ git clone https://github.com/biganans/ipa-build.git
```

* 确保一定 使这些文件在你的工程下面    
    Make sure put all download files to your project folder. <br>
* 修改APP_Build_Distribution.sh    
    change APP_Build_Distribution.sh for your project
    *  out_path:这个参数是打包到什么文件夹 但是这个文件夹必须要先建立好    
    ```
        out_path: The last ipa compiled directory,make sure this directory is exist.   
    ```
    *  target: 需要编译xcode的哪个target  
    ```
        target: xcode target
    ```
    *  xcodeproj: xcode项目的名字 比如game.xcodeproj这里使用game    
    ```
        xcodeproj: like game.xcodeproj is game
    ```
    *  ipa-build: 参数类型说明
        ```
        -c (Debug or Release) -m (model 0:developer 1:Distribution 2:enterprise)  
        ```
        open mac terminal,make the directory permission is -x or 777,you can use this command:    
        ```
        $ cd xcodeproject_directory 
        
        $ sudo chmod -R 777 ./ 
        ```
        then,use the fllow command.   
        ```
        $ sh APP_Build_Distribution.sh
        ```
        
 * 等啊等啊等，没有错误输出并显示：Congratulations iap is ok!! 就可以愉快的玩耍吧。   
        wait,wait,at last,output:"Congratulations iap is ok!!",enjoy youself.


About Xcode9 Build
----------    
 * 修改对应的build_option.plist，可以使用archive编译，得到对应的list参数ExportOptions.plist，增加了几个字段：provisioningProfiles、signingCertificate、signingStyle、thinning   
    Fix project build_option.plist,you can bulid with archive model,then get the ExportOptions.plist,you will find list more property  in this time with xcode9 With these changes :provisioningProfiles、signingCertificate、signingStyle.   
    
 * provisioningProfiles:对应打包描述文件的UUID   
 ```
   mobileprovision's UUID
    可以通过这个方法得到：
    You can use this way to get it:
    用mac自带的命令security，cd到mobileprovision所在的文件夹，执行 
    Use mac bash security,cd mobileprovision file,and excute
    security cms -D -i XXX.mobileprovision 
    会得到下面的dict结构的详细信息
    You will get the detail dict and find UUID.
 ```
* signingCertificate:为固定内容不需要修改    
  need no change.    
* signingStyle:为固定内容    
  nood no change.   
* thinning:暂时为空   
nil.   


Thanks 感激   
----------
  ccf <br>
  KINET
  
