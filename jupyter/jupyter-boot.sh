#!/bin/sh

sudo apt install -y expect



#设置jupyter密码为z
#  用expect喂密码给 jupyter-notebook password 
password=z
/usr/bin/expect<<-EOF
spawn jupyter-notebook password
expect {
    "Enter password: "
    {send "$password\r";exp_continue}
    "Verify password: "
    {send "$password\r"}
}
  expect eof
EOF

#expect 参考: https://blog.csdn.net/CN_TangZheng/article/details/103388445


#启动jupyter
nohup /app/miniconda3/bin/jupyter-notebook  --ip=0.0.0.0 --no-browser &
#"jupyter-notebook" == "jupyter notebook"
#命令帮助为 jupyter-notebook --help
#浏览器访问地址为 http://u22:8888,  u22为本地域名
