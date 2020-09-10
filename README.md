##  介绍

在LINUX系统中，很多软件需要修改配置文件之后，才能更好的使用。因此在此备份这些配置文件，避免在不同设备上需要多次配置的情况。

------
## 目录说明

* Git
* [vim](#jump ) 
* <a href="#1. vim配置">vim</a>
* WindowsTerminal


------

### 1. vim配置

使用.vimrc文件用来配置vim 

第一步-备份

~~~
cp ~/.vimrc .vimrc.orig
~~~
第二步-下载

~~~
git clone git@gitee.com:Rlucien/SoftConfig.git
git clone gitclone@gitclone.com:9922/pnyssk/SoftConfig.git
git clone git@github.com:ldh0sky/SoftConfig.git
~~~

第三步-替换
~~~
cp ./SoftConfig/vim/.vimrc ~/.vimrc
~~~



------

