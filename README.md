# emacs-configure-file
emacs的配置文件(.emacs)


写在前面 
>C-x指Ctrl + x 

>M-x指Alt + x 

>C-x，C-s指Ctrl + x， Ctrl + s

[emacs使用教程](http://luxiaoyou.github.io/blog/2015/4/a-simple-emacs-tutorial.html)

如何配置？
-------------
在启动的emacs下依次按Ctrl+x Ctrl+f。输入~/.emacs后回车

然后将配置好的.emacs的内容复制粘贴过去，Ctrl+x Ctrl+s保存配置。如果懒得复制粘贴，可直接拷贝.emacs到下面路径覆盖原来的。

windows默认路径
>c://users/你的用户名/AppDate/Roaming/

linux默认路径
>/home/你的用户名/

如何安装插件？
-----------------------
我在文件配置里配置了下载插件的地址，我们只需要到emacs的包管理器中下载对应的插件就行。

进入插件包管理
>M-x
list-packages
