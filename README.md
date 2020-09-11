##  介绍

在LINUX系统中，很多软件需要修改配置文件之后，才能更好的使用。因此在此备份这些配置文件，避免在不同设备上需要多次配置的情况。

#### 下载

从gitee下载配置文件
~~~
git clone git@gitee.com:Rlucien/SoftConfig.git
~~~
从gitclone下载配置文件
~~~
git clone gitclone@gitclone.com:9922/pnyssk/SoftConfig.git
~~~
从github下载配置文件
~~~
git clone git@github.com:ldh0sky/SoftConfig.git
~~~    
    
    
## 目录说明

- [git](#git配置) 
- [vim](#vim配置)
- [WindowsTerminal](#WindowsTerminal配置)

##  修改软件配置

#### git配置
使用.gitconfig文件用来配置git
~~~
cp ~/.gitconfig ~/.gitconfig.orig
cp ./SoftConfig/git/.gitconfig ~/.gitconfig
~~~

------

###  vim配置

使用.vimrc文件用来配置vim 

~~~
cp ~/.vimrc ~/.vimrc.orig
cp ./SoftConfig/vim/.vimrc ~/.vimrc
~~~

------

###  WindowsTerminal配置
使用settings.json文件用来配置WindowsTerminal

~~~
cp ~/settings.json settings.json.orig
cp ./SoftConfig/WindowsTerminal/settings.json ~/settings.json
~~~

------
