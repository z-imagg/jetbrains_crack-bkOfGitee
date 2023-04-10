
> 例如 win10 idea:
```bash

#文件: "D:\IntelliJ IDEA 2022.3.2\bin\idea64.exe.vmoptions" | "D:\CLion 2022.3.3\bin\clion64.exe.vmoptions" 末尾添加以下行：

--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED
-javaagent:d:\pubx\jetbrains_crack\2022\jetbra\ja-netfilter.jar=jetbrains
```


> 例如 ubuntu22.04 clion:
```bash

#文件: "/zz/clion-2022.3.3/bin/clion64.vmoptions"  末尾添加以下行：

--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED
-javaagent:/pubx/jetbrains_crack/2022/jetbra/ja-netfilter.jar=jetbrains
```


> 启动clion, 填入clion_sn.txt中的序列号
> 启动idea,  填入idea_sn.txt中的序列号
