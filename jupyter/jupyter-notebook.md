## 卸载jupyter
``` pip uninstall -y jupyter jupyter_core jupyter-client jupyter-console jupyter-contrib-nbextensions jupyter-contrib-core jupyter-highlight-selected-word jupyter-latex-envs jupyter-nbextensions-configurator notebook nbconvert nbformat ```

##  安装jupyter  
```shell
source /app/miniconda3/bin/activate
which python #==/app/miniconda3/bin/python
which pip #==/app/miniconda3/bin/pip
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip install jupyter
which jupyter   #==/app/miniconda3/bin/jupyter
```

## 在 脚本中 使用 expect  设置jupyter密码

## jupyter --version
> ```jupyter --version```输出如下
```txt
#jupyter --version
Selected Jupyter core packages...
IPython          : 8.19.0
ipykernel        : 6.28.0
ipywidgets       : 8.1.1
jupyter_client   : 8.6.0
jupyter_core     : 5.6.1
jupyter_server   : 2.12.1
jupyterlab       : 4.0.10
nbclient         : 0.9.0
nbconvert        : 7.14.0
nbformat         : 5.9.2
notebook         : 7.0.6
qtconsole        : 5.5.1
traitlets        : 5.9.0
```

## 启动jupyter 
> 启动jupyter  : [jupyter-boot.sh](https://gitcode.net/pubx/jetbrains/jetbrains_crack/-/blob/master/jupyter/jupyter-boot.sh)
