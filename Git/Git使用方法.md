## __Git使用方法__


* ### 基础

#### 初始化

使用Git前，需要先建立一个仓库。

```
git init
```
使用我们指定目录作为Git仓库。
```
git init repo
```
#### 添加

新建的仓库是空目录，可以使用add命令添加文件。

```
git add filename
git add .
```
#### __删除__
如何你想从资源库中删除文件，我们使用rm。
```
git rm file
```
#### 提交
添加了这些文件后，还将它们提交到仓库。
```
git commit -m "Adding files"
```
如果您不使用-m，会出现编辑器来让你写自己的注释信息。
当我们修改了很多文件，可以使用-a标识。
```
git commit -am "Changed some files"
```


* ### 进阶
* 
####  仓库
显示远程仓库
```
git remote show [remote]
git remote -v
```
添加远程仓库
```
git remote add [shortname] [url]
```
修改仓库名
```
git remote rename old_name new_name
```
删除远程仓库
```
git remote rm name
```
####  发布
修改完成后可以进行推送到服务器。

```
git push ssh://example.com/demo/project.git
```

#### 历史
版本控制系统包含了历史记录
```
git log
git blame <file>
```

#### 回退
把当前版本回退到上一个版本，HEAD是当前版本。
```
git reset --hard HEAD
git reset --hard 1094a
```

#### 状态
通过命令可以查看当前状态
```
git status
```

* ### 进阶

####  配置

配置个人的用户名称和电子邮件地址。
```
git config --global user.name "coker"
git config --global user.email ldh0sky@sina.com
```

配置默认文本编辑器

```
git config --global core.editor vim
```

配置差异分析工具

```
git config --global merge.tool vimdiff
```

####  查看配置
```
git config --list

git config user.name
```
