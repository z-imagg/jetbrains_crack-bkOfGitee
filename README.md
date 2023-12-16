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




