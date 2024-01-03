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


###  卸载
> 卸载 beyond compare 4
```shell
#找到刚安装的bc4
dpkg --list | grep compare
#ii  bcompare   4.4.7-28397   amd64   Beyond Compare 4

sudo apt remove bcompare
```
