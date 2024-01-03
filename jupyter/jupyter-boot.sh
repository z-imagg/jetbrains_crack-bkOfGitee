#!/bin/sh

#设置jupyter密码为z
/app/miniconda3/bin/python -c "from notebook.auth.security import set_password;  set_password(password='z') "
#交互式设置密码命令为 jupyter-notebook password,  此命令不适合启动脚本用

#启动jupyter
nohup /app/miniconda3/bin/jupyter-notebook --ip=0.0.0.0 &
#"jupyter-notebook" == "jupyter notebook"
