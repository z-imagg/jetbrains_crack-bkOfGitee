> 本文来源为 https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/README.md
# 2022/jetbra/ja-netfilter.jar 

## 安装 2022/jetbra/ja-netfilter.jar 
```bash
cd /app/
git clone https://gitcode.net/pubx/jetbrains/jetbrains_crack.git
file /app/jetbrains_crack/2022/jetbra/ja-netfilter.jar 
#ja-netfilter.jar: Zip archive data, at least v1.0 to extract, compression method=deflate
```
 
 ```cat /app/jetbrains_crack/2022/jetbra/append.vmoptions ```
>  即 [2022/jetbra/append.vmoptions](https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/2022/jetbra/append.vmoptions)
```text
--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED
-javaagent:/app/jetbrains_crack/2022/jetbra/ja-netfilter.jar=jetbrains
```

## pycharm 2022.3
1. 下载页面 https://www.jetbrains.com/pycharm/download/other.html
```wget https://download.jetbrains.com/python/pycharm-professional-2022.3.tar.gz?_gl=1*1po7w45*_ga*MTc1NDE2OTQ5Ni4xNzAyNDgwNTM4*_ga_9J976DJZ68*MTcwMjc2NDI2Ni4zLjAuMTcwMjc2NDI2Ni4wLjAuMA..&_ga=2.46885984.611356690.1702761360-1754169496.1702480538```
2. 正常解压pycharm
3. 引入ja-netfilter.jar
>/app/pycharm-2022.3/bin/pycharm64.vmoptions末尾添加内容```cat /app/jetbrains_crack/2022/jetbra/append.vmoptions >> /app/pycharm-2022.3/bin/pycharm64.vmoptions```
4. 如果之前启动过pycharm，则需要删除其数据目录```rm -fr ~/.config/JetBrains/PyCharm2022.3```
5. 启动/app/pycharm-2022.3/bin/pycharm.sh, 并填入注册马 https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/2022/jetbra/pycharm_sn.txt

## clion 2022.3.3
1. 下载页面 https://www.jetbrains.com/clion/download/other.html
```wget  https://download.jetbrains.com/cpp/CLion-2022.3.3.tar.gz?_gl=1*1fmagh0*_ga*MTc1NDE2OTQ5Ni4xNzAyNDgwNTM4*_ga_9J976DJZ68*MTcwMjc2NDI2Ni4zLjEuMTcwMjc2NTk3OC4wLjAuMA..&_ga=2.8614770.611356690.1702761360-1754169496.1702480538```
2. 正常解压clion
3. 引入ja-netfilter.jar
>/app/clion-2022.3.3/bin/pycharm64.vmoptions末尾添加内容```cat /app/jetbrains_crack/2022/jetbra/append.vmoptions >> /app/pycharm-2022.3/bin/pycharm64.vmoptions```
4. 如果之前启动过clion，则需要删除其数据目录```rm -fr ~/.config/JetBrains/CLion2022.3/```
5. 启动/app/pycharm-2022.3/bin/clion.sh, 并填入注册马 https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/2022/jetbra/clion-2022-3.3_sn.txt


## rubymine 2022.3.3
1. 下载页面 https://www.jetbrains.com/ruby/download/other.html
```wget https://download.jetbrains.com/ruby/RubyMine-2022.3.3.tar.gz?_gl=1*1hqzv32*_ga*MTc1NDE2OTQ5Ni4xNzAyNDgwNTM4*_ga_9J976DJZ68*MTcwMzI5NTA3Ni40LjEuMTcwMzI5NjcxNi4wLjAuMA..&_ga=2.27315068.1527455134.1703295076-1754169496.1702480538```
2. 正常解压rubymine
3. 引入ja-netfilter.jar
>/app/RubyMine-2022.3.3/bin/rubymine64.vmoptions末尾添加内容```cat /app/jetbrains_crack/2022/jetbra/append.vmoptions >> /app/RubyMine-2022.3.3/bin/rubymine64.vmoptions```
4. 如果之前启动过rubymine，则需要删除其数据目录```rm -fr ~/.config/JetBrains/RubyMine2022.3/```
5. 启动/app/RubyMine-2022.3.3/bin/rubymine.sh, 并填入注册马 https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/2022/jetbra/rubymine-2022.3.3_sn.txt

# 2021
##  idea2021.3


0. 材料 TODO 修改gitlab为gitcode
> [FineAgent.jar](https://gitlab.com/pubz/jetbrains-crack/-/raw/main/2021.3/FineAgent.jar)

> [ActivationCode.txt](https://gitlab.com/pubz/jetbrains-crack/-/raw/main/2021.3/ActivationCode.txt)

2. 添加javaagent
```python
#D:\Program Files\JetBrains\IntelliJ IDEA 2021.2.4\bin\idea64.exe.vmoptions
#....
-javaagent:f:/FineAgent.jar
#添加上一行
```

2.正常启动idea, 输入以下激活马 https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/2021/idea2021.3_sn.txt


3. 激活至2099



# 解决：JetBrains 系列IDE 在ubuntu22.04下 输入法切换不到中文
> [问题 jetbrains:issue/JBR-2460](https://youtrack.jetbrains.com/issue/JBR-2460)

## 有效方法
> 既然不能切换，那就不切换了， 所用窗口使用相同的输入法

- 解决办法：
> 设置 -->  输入源切换  --> 所有窗口使用相同输入源


##  无效方法： 
1. ```export XIM...```  （无效方法）
2. ``` -Drecreate.x11.input.method=true``` （无效方法）
> 此两个无效方法 
3.  切换idea的启动jdk （无效方法）


## 无效方法的参考说明
- 无效方法1、2具体 参考 [解决Ubuntu IDEA 不能输入中文](https://cloud.tencent.com/developer/article/1929886) 、或 google 搜索 ```idea 输入法不跟随```

- 无效方法3 参考：
> 步骤见[idea/switching-boot-jdk](https://www.jetbrains.com/help/idea/switching-boot-jdk.html)， 比如 切换到 [声称支持 linux下输入法切换的 idea jdk](https://github.com/JetBrains/JetBrainsRuntime/releases/tag/jbr-release-17.0.6b829.5), 其 具体下载地址比如[jbr_jcef-17.0.6-linux-x64-b829.5.tar.gz](https://cache-redirector.jetbrains.com/intellij-jbr/jbr_jcef-17.0.6-linux-x64-b829.5.tar.gz)
> 照做后，依然不能切换输入法


# beyond compare 4 安装
[beyond_compare4安装](https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/beyond_compare/beyond_compare4.md)
