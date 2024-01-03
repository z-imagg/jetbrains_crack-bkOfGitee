>本文来源：[git轻量级服务器gogs、gitea，非轻量级gitbucket](https://blog.csdn.net/hfcaoguilin/article/details/131637090),  或 [  gitcode/gogs,gitea.md](https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/gogs,gitea/gogs,gitea.md)

> 结论:  
> 1. gogs、gitea很相似  确实轻，  
> 2. gitbucket基于java 不轻，  
> 3. 这三者都不支持组织树(嵌套组织 nested group)   只能一层组织。

> 个人用，基于gogs、gitea，两层结构树 简易办法：  把用户当成第一层节点、该用户的创建的组织为第二层节点、仓库为叶子，始终使用超级管理员来观看。
#  gogs
##  确保本真机已启动sshd服务
0.  宿主机启用sshd服务
```bash
sudo apt install openssh-server -y
sudo systemctl start ssh
```

##  gogs部署
### 0. 启动
```bash
sudo docker stop gogs;  
sudo docker rm gogs;  
sudo mkdir /build/gitea_data
#rm -fr /build/gogs_data/*;   # 此删除只是调试本文时用。  正常使用，不要删除该目录，否则代码仓库都没了。
#目录/build/gogs_data/  是随意的
sudo docker run --name=gogs -p 10022:22 -p 10880:3000 -v /build/gogs_data:/data gogs/gogs


```

 
### 1. 安装 

> 安装配置如下，[配置参考](https://juejin.cn/post/7035928848797696036)


|名     | 值 |  值说明|
|:--------:| -------------:| -------------:|
Repository Root Path  | |保持不变
Run User:  | git| 保持不变 
Domain  |  10.0.4.107 | 宿主机ip或宿主机主机名
SSH Port  |10022 |docker容器内sshd22端口映射到宿主机的端口10022
使用内置SSH服务器  |不勾选 |保持不变 
 HTTP Port  |3000 |docker容器内进程gogs的web端口
 Application URL |http://10.0.4.107:10880/  | 宿主机ip或名:docker容器内进程gogs的web端口映射到宿主机端口10880



>访问 [http://localhost:10880/install](http://localhost:10880/install)
>  ![在这里插入图片描述](https://img-blog.csdnimg.cn/64a428eaabe64c2f9b52463a466c8f9e.png)


 
### 2. 注册一账号： 用户名 user ，邮箱 user@mail.com， 密码 empty

### 3. 登陆该账号

### 4. 创建新仓库repo1 ,  获得仓库地址 :  
- http://user:empty@10.0.4.107:10880/prgrmz07/repo1.git  ,  
- ssh://git@10.0.4.107:10022/prgrmz07/repo1.git

### 5.  事先在本地宿主机用ssh-keygen生成一对rsa私钥公钥，gogs页面右上角落  倒三角形  --> 用户设置 --> ssh密钥  添加刚刚的公钥

## 使用
### 6. gitkraken , 设置 -->  SSH --> 不勾选 "Use local SSH agent"  -->  { "SSH Private Key" : 步骤5的私钥， "SSH Public Key" : 步骤5的公钥} ， 
>> 此时 gitkraken可正常使用 步骤4 中的ssh仓库地址
 


#  gitea
## 0. 下载
> [gitea/releases/tag/v1.21.2](https://github.com/go-gitea/gitea/releases/tag/v1.21.2)
> [gitea-1.21.2-linux-amd64](https://github.com/go-gitea/gitea/releases/download/v1.21.2/gitea-1.21.2-linux-amd64)
## 1. 启动
### 创建用户g
```bash
sudo deluser --force --remove-home g
sudo adduser g
#        Full Name []: g
#其余全部留空,直接回车
```

### 以用户g启动gitea
> 以用户g登录ssh
```bash
whoami
#g

cd ~
file ./gitea-1.21.2-linux-amd64
#./gitea-1.21.2-linux-amd64: ELF 64-bit LSB executable, x86-64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=d29a6b35e258ae4e4d778fc7a2181bc49fbb0262, for GNU/Linux 3.2.0, with debug_info, not stripped

./gitea-1.21.2-linux-amd64 --version
#Gitea version 1.21.2 built with GNU Make 4.3, go1.21.5 : bindata, sqlite, sqlite_unlock_notify


#启动
nohup ./gitea-1.21.2-linux-amd64   web &

```
## ~~端口映射~~  
- gitea所在地址 10.0.4.22，在同一路由器的网段下，有win10工作机地址为10.0.4.13
- ~~路由器 内网地址 10.0.4.1 , 路由器到光猫地址为 192.168.1.4~~ 
- ~~端口映射 10.0.4.22:3000 映射为 192.168.1.4:2230~~ 
[~~原本的端口映射图，现在不需要了~~ ](https://img-blog.csdnimg.cn/direct/c68ab2a2a66946b590d959b133ef28c5.png)

## 本地域名：令 giteaz 指向 光猫网络内的gitea的ip
- 即 令 giteaz 指向 10.0.4.22,  如下：
> 在gitea所在ubuntu22主机上：```echo "10.0.4.22 giteaz" | sudo tee -a /etc/hosts ```
> 在工作机win10上: ```向文件 C:\Windows\System32\drivers\etc\hosts 追加一行 "10.0.4.22 giteaz"   ```
## 2. 配置
> 访问 [http://giteaz:3000](http://giteaz:3000), 填入以下配置： 
![在这里插入图片描述](https://img-blog.csdnimg.cn/direct/db2b018f1e7644c993cab26fe24db0c4.png)

  [~~上一版本有端口映射时的配置图~~ ](https://img-blog.csdnimg.cn/direct/b171020f929d4693b6e48608adba7fe1.png)


> 点击 立即安装 会跳转到到 [http://giteaz:3000/user/login](http://giteaz:3000/user/login)
> 手工注册一用户（第一个用户 即位管理员）

## 3. 关闭
```./gitea-1.21.2-linux-amd64 manager shutdown```


## 访问 : 
1.  最内层的路由器局域ip地址：[http://10.0.4.22:3000/](http://10.0.4.22:3000/)  
2.  最内层的路由器局域ip地址：[http://giteaz:3000/](http://giteaz:3000/)  
2.  ~~外层光猫ip地址：[http://192.168.1.4:2230/](http://192.168.1.4:2230/)~~   
3.  ~~外层光猫ip地址的本地域名：[http://giteaz:2230/](http://giteaz:2230/)~~   


## 备份 
```bash
~/gitea-1.21.2-linux-amd64 dump  --file   gitea-dump-$(date +'%Y-%m-%d-%H-%M-%S_%s_%N').zip
ls -lh  gitea-dump-20231221113547_1703129747_317147932.zip
#-rw-------  g g 301M 12月 21 11:35 gitea-dump-20231221113547_1703129747_317147932.zip
```


## 恢复
1. 安装好ubuntu22后，依然创建同样的用户g，其家目录为默认的/home/g

2. 恢复 备份文件 gitea-dump-20231221113547_1703129747_317147932.zip
```shell
pwd
#/home/g

whoami
#g

unzip gitea-dump-20231221113547_1703129747_317147932.zip
#app.ini gitea-db.sql  custom data repo

wget https://raw.githubusercontent.com/DevelopersToolbox/ini-file-parser/master/src/ini-file-parser.sh
source ini-file-parser.sh 
process_ini_file custom/conf/app.ini 
echo $(get_value repository ROOT)
#/home/g/data/gitea-repositories

mkdir  -pv  $(get_value repository ROOT)/
mv -v  repos/* $(get_value repository ROOT)/



./gitea-1.21.2-linux-amd64 web

```


##  解决头像慢问题（ 禁止从email获取头像 ）
 ![在这里插入图片描述](https://img-blog.csdnimg.cn/direct/a02537c6d32a46f0915a6b061c2c3f73.png)

1. 默认时，后台从email获取头像avatars 拿不到即超时，导致页面卡顿， 
```
2023/12/21 18:33:26 ...ls/avatars/avatar.go:117:LibravatarURL() [E] LibravatarService.FromEmail(email=prgrmz07@163.com): error lookup _ava                                               tars-sec._tcp.163.com on 127.0.0.53:53: read udp 127.0.0.1:37141->127.0.0.53:53: i/o timeout

```

2. 解决："设置" --> 头像设置 --> 勾选 "启动自定义头像" --> 更新头像 

3. 重启gitea进程
```shell
~/gitea-1.21.2-linux-amd64 manager restart
```

4. 页面不再卡顿



## 4. 备注
> gitea也不支持嵌套组织



## ~~5. 其他用户可调用的 启动、停止脚本~~  
~~1. 关闭gitea的脚本```/home/g/shutdown_gitea.sh```~~ 
```shell
#!/bin/sh

{ sudo -u g /home/g/gitea-1.21.2-linux-amd64 manager shutdown || { echo "gitea stoped" && exit 0 ;}  ;} && \
sleep 2 && \
{ \
 { pidof gitea-1.21.2-linux-amd64 && echo "shutdown gitea failed" && exit 2 ;} || \
echo "shutdown gitea ok" ;}
```

~~2. 启动gitea的脚本```/home/g/boot_gitea.sh```~~ 
> 启动脚本问题： z用户调用该脚本 貌似并没有正常启动 但进程是存在的，且 调用停止脚本  该进程依然存在
```shell
#!/bin/sh

function has_gitea_pid(){
#若函数参数少于1个，则退出（退出码为23）
[ $# -lt 1 ] && return 23
msg=$1
pidof gitea-1.21.2-linux-amd64 && \
echo "$msg" && \
return 0
}

cd /home/g/
{ has_gitea_pid "gitea已启动" && exit 0 ;} || \
{ \
(sudo -u g nohup /home/g/gitea-1.21.2-linux-amd64 web &) && \
sleep 2 &&  \
has_gitea_pid "gitea正常启动" && \
_=end
}

```

## web页面中 显示 .ipynb

0. 安装jupyter
> [安装jupyter](https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/jupyter/jupyter-notebook.md)

1. 安装nbconvert
```shell
source /app/miniconda3/bin/activate
which pip #==/app/miniconda3/bin/pip
pip install nbconvert 
```



2. nvconvert例子
> ```/app/miniconda3/bin/jupyter nbconvert --to html --template full /bal/bochs_run-linux4/analyze/py4cytoscape_demo.ipynb```

3.给gitea的配置文件添加nbconvert配置 
>  ```cat  /app/jetbrains_crack/gogs,gitea/gitea_custom_conf_app.ini_nbconvert.txt  >> custom/conf/app.ini ```

> [gitea_custom_conf_app.ini_nbconvert.txt内容](https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/gogs,gitea/gitea_custom_conf_app.ini_nbconvert.txt)

4. 重启gitea

5. 浏览器再次访问.ipynb文件 即正常渲染为.html文件
> [py4cytoscape_demo.ipynb](http://giteaz:3000/bal/bal/src/branch/bal/dev/bochs_run-linux4/analyze/py4cytoscape_demo.ipynb) 

### 参考
0.  [How to render Jupyter Notebooks on Gitea](https://blog.gitea.com/render-jupyter-notebooks/)
1.  [基于 Gitea 服务端渲染的 Jupyter Notebooks](https://www.cnblogs.com/Gitea/p/16593195.html)


#  gitbucket

```bash
mkdir -p /build/gitbucket_home/data/

cd /build/gitbucket_home/
#download gitbucket.war from https://github.com/gitbucket/gitbucket/releases
java -jar gitbucket.war --gitbucket.home=/build/gitbucket_home/data/

```

> 页面访问 http://localhost:8080   ,  用户名root  密码root ， 即可开始
