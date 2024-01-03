##  安装jupyter 其中notebook版本6.5.5
```shell
source /app/miniconda3/bin/activate
which python #==/app/miniconda3/bin/python
which pip #==/app/miniconda3/bin/pip
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip install notebook==6.5.5   traitlets==5.9.0
pip install jupyter   #这一步安装的jupyter会使用上一步安装的notebook6.5.5 、 traitlets==5.9.0
which jupyter   #==/app/miniconda3/bin/jupyter
```

## 使用 ```notebook==6.5.5``` 原因是 为了能调用py设置jupyter密码,
> 比如设置jupyter密码为z：  
```python
from notebook.auth.security import set_password;
set_password(password='z')    
```

## 使用 traitlets==5.9.0 是为了能正常启动 notebook
> 使用   ```traitlets==5.9.0```  ,  原因是 如果不使用该版本 会发生错误 [notebook/issues/7048](https://github.com/jupyter/notebook/issues/7048)（jupyter notebook 启动报错 ）

## jupyter --version
> ```jupyter --version```输出如下
```txt
#jupyter --version
Selected Jupyter core packages...
IPython          : 8.19.0
ipykernel        : 6.28.0
ipywidgets       : 8.1.1
jupyter_client   : 7.4.9
jupyter_core     : 5.6.1
jupyter_server   : 2.12.1
jupyterlab       : not installed
nbclient         : 0.9.0
nbconvert        : 7.14.0
nbformat         : 5.9.2
notebook         : 6.5.5
qtconsole        : 5.5.1
traitlets        : 5.9.0
```

## 启动jupyter 
> 启动jupyter  : [jupyter-boot.sh](https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/jupyter/jupyter-boot.sh)
