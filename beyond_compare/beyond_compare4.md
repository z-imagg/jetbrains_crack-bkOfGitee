## 0. 本机环境 : ubuntu22.04 X64
```shell
uname -a
#Linux mhv 6.2.0-39-generic #40~22.04.1-Ubuntu SMP PREEMPT_DYNAMIC Thu Nov 16 10:53:04 UTC 2 x86_64 x86_64 x86_64 GNU/Linux

#cat /etc/issue
Ubuntu 22.04.3 LTS \n \l
```


## 安装 gdebi （即 apt的GUI版）  （非必须） 

> gdebi即 apt的GUI版，安装命令为  ```sudo apt install gdebi-core  gdebi```




## 安装 beyond compare 4 deb 版本
### 安装包获取

> [bc4下载页面](https://www.scootersoftware.com/download), 

> [bcompare-4.4.7.28397_amd64.deb下载地址 https://www.scootersoftware.com/files/bcompare-4.4.7.28397_amd64.deb ](https://www.scootersoftware.com/files/bcompare-4.4.7.28397_amd64.deb)

###  安装
```shell
wget https://www.scootersoftware.com/files/bcompare-4.4.7.28397_amd64.deb

#方法1. 用apt安装
sudo apt install bcompare-4.4.7.28397_amd64.deb

#方法2. 用gdebi安装
#sudo gdebi ./bcompare-4.4.7.28397_amd64.deb

#方法3. 用 图形化gdebi 安装
#sudo gdebi-gtk ./bcompare-4.4.7.28397_amd64.deb

```

> 图形化gdebi 安装 beyond_compare 4 界面举例
![图形化gdebi 安装 beyond_compare 4 界面举例](https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/raw/master/beyond_compare/gdebi-gtk-demo.png)


### 破解
1.  删除二进制文件/usr/lib/beyondcompare/BCompare中的一串序列号 
```shell
cd /usr/lib/beyondcompare/

ls -lh BCompare
#-rwxrwxr-x 1 root root 31M  1月  3 11:08 /usr/lib/beyondcompare/BCompare
file  /usr/lib/beyondcompare/BCompare
#/usr/lib/beyondcompare/BCompare: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.4.0, stripped



#备份
cp BCompare BCompare.origin

#此命令含义是 将 二进制文件 /usr/lib/beyondcompare/BCompare  中的一串序列号字符串 替换为 空字符串
sudo sed -i "s/keexjEP3t4Mue23hrnuPtY4TdcsqNiJL-5174TsUdLmJSIXKfG2NGPwBL6vnRPddT7tH29qpkneX63DO9ECSPE9rzY1zhThHERg8lHM9IBFT+rVuiY823aQJuqzxCKIE1bcDqM4wgW01FH6oCBP1G4ub01xmb4BGSUG6ZrjxWHJyNLyIlGvOhoY2HAYzEtzYGwxFZn2JZ66o4RONkXjX0DF9EzsdUef3UAS+JQ+fCYReLawdjEe6tXCv88GKaaPKWxCeaUL9PejICQgRQOLGOZtZQkLgAelrOtehxz5ANOOqCaJgy2mJLQVLM5SJ9Dli909c5ybvEhVmIC0dc9dWH+/N9KmiLVlKMU7RJqnE+WXEEPI1SgglmfmLc1yVH7dqBb9ehOoKG9UE+HAE1YvH1XX2XVGeEqYUY-Tsk7YBTz0WpSpoYyPgx6Iki5KLtQ5G-aKP9eysnkuOAkrvHU8bLbGtZteGwJarev03PhfCioJL4OSqsmQGEvDbHFEbNl1qJtdwEriR+VNZts9vNNLk7UGfeNwIiqpxjk4Mn09nmSd8FhM4ifvcaIbNCRoMPGl6KU12iseSe+w+1kFsLhX+OhQM8WXcWV10cGqBzQE9OqOLUcg9n0krrR3KrohstS9smTwEx9olyLYppvC0p5i7dAx2deWvM1ZxKNs0BvcXGukR+/g" BCompare


```
2. 报错弹窗“Trial Mode Error！”
![“Trial Mode Error！”](https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/raw/master/beyond_compare/beyond_compare_4_Trial_Mode_Error.png)

3. 点击 "Enter Key" ，输入以下key，即注册成功
```txt
--- BEGIN LICENSE KEY ---
GXN1eh9FbDiX1ACdd7XKMV7hL7x0ClBJLUJ-zFfKofjaj2yxE53xauIfkqZ8FoLpcZ0Ux6McTyNmODDSvSIHLYhg1QkTxjCeSCk6ARz0ABJcnUmd3dZYJNWFyJun14rmGByRnVPL49QH+Rs0kjRGKCB-cb8IT4Gf0Ue9WMQ1A6t31MO9jmjoYUeoUmbeAQSofvuK8GN1rLRv7WXfUJ0uyvYlGLqzq1ZoJAJDyo0Kdr4ThF-IXcv2cxVyWVW1SaMq8GFosDEGThnY7C-SgNXW30jqAOgiRjKKRX9RuNeDMFqgP2cuf0NMvyMrMScnM1ZyiAaJJtzbxqN5hZOMClUTE+++
--- END LICENSE KEY -----
```

4. 回顾对BCompare的修改
```shell
cd /usr/lib/beyondcompare/
bcompare  BCompare BCompare.origin
```

###  卸载
> 卸载 beyond compare 4
```shell
#找到刚安装的bc4
dpkg --list | grep compare
#ii  bcompare   4.4.7-28397   amd64   Beyond Compare 4

sudo apt remove bcompare
```
