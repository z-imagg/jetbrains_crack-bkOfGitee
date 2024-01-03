#!/bin/sh

#设置jupyter密码为z
/app/miniconda3/bin/python -c "from notebook.auth.security import set_password;  set_password(password='z') "

#启动jupyter
nohup /app/miniconda3/bin/jupyter notebook --ip=0.0.0.0 &
