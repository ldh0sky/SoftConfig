## Git使用方法


* ### 基础

#### 初始化

使用Git前，需要先建立一个仓库(repository)。
```
git init
```
使用我们指定目录作为Git仓库。
```
git init newrepo
```
#### 添加
新建的仓库是空目录，可以使用add命令添加文件。
```
git add filename
git add .
```
#### 删除
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

####  发布
修改完成后可以进行推送到服务器。

```
git push ssh://example.com/demo/project.git
```

#### 历史
版本控制系统包含了历史记录
```
git log
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