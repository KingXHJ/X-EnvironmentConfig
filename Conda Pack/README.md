# Conda Pack

## 目录
- [旧机器上打包conda环境](#旧机器上打包conda环境)
- [新机器上安装打包的conda环境](#新机器上安装打包的conda环境)
- [返回上一级README](../README.md)

URL1: https://zhuanlan.zhihu.com/p/661869072#:~:text=%E6%97%A7%E6%9C%BA%E5%99%A8%E4%B8%8A%E6%89%93%E5%8C%85conda%E7%8E%AF%E5%A2%83%201%20%E5%AE%89%E8%A3%85%E6%89%93%E5%8C%85conda%E7%8E%AF%E5%A2%83%E7%9A%84%E8%BD%AF%E4%BB%B6%EF%BC%9A%20conda%20install%20-c%20conda-forge%20conda-pack,2%20%E4%BD%BF%E7%94%A8conda-pack%E6%89%93%E5%8C%85%E7%8E%AF%E5%A2%83%EF%BC%9A%20conda%20pack%20-n%20%E8%99%9A%E6%8B%9F%E7%8E%AF%E5%A2%83%E5%90%8D%E7%A7%B0%20-o%20output.tar.gz
URL2: https://zhuanlan.zhihu.com/p/540615230

## 旧机器上打包conda环境
1. 安装打包conda环境的软件：

    ```sh
    conda install conda-pack
    # conda install -c conda-forge conda-pack
    ```

    or

    ```
    pip install conda-pack
    ```
    
1. 使用conda-pack打包环境：

    ```sh
    conda pack -n <虚拟环境名称> -o output.tar.gz
    ```
    

## 新机器上安装打包的conda环境

1. 复制压缩文件 ```output.tar.gz``` 到新的电脑环境
1. 进入到 ```conda``` 的安装目录下：```/anaconda(或者miniconda)/envs/```，在该名目录下创建文件夹 ```mkdir -p my_env```，复制 ```output.tar.gz``` 到文件夹中。
1. 解压conda环境：```tar -xzvf output.tar.gz```
1. 使用 ```conda env list``` 查看虚拟环境
1. ```conda activate <环境名称>```


*[返回目录](#目录)*