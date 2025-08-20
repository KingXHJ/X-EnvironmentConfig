# pip 使用国内源

## 目录
- [国内源](#国内源)
- [临时使用](#临时使用)
- [永久使用](#永久使用)
- [返回上一级README](../README.md)


## 国内源

```
清华大学：https://pypi.tuna.tsinghua.edu.cn/simple
阿里云：http://mirrors.aliyun.com/pypi/simple/
豆瓣：http://pypi.douban.com/simple/
```

## 临时使用

```sh
pip install -i http://pypi.douban.com/simple/ numpy
pip install -i http://pypi.douban.com/simple/--trusted-host pypi.douban.com  #此参数“--trusted-host”表示信任，如果上一个提示不受信任，就使用这个
```

## 永久使用

1. Linux平台安装方式：
    - 创建pip.conf文件
    1. 首先创建```.pip```目录：
        ```sh
        mkdir ~/.pip
        cd ~/.pip
        ```

    1. 在 .pip 目录下创建一个 pip.conf 文件并编辑:
        ```sh
        sudo vim pip.conf
        ```
    1. 写入以下内容：
        ```sh
        [global] 
        index-url = https://pypi.tuna.tsinghua.edu.cn/simple
        [install]
        trusted-host = https://pypi.tuna.tsinghua.edu.cn
        # trusted-host 此参数是为了避免麻烦，否则使用的时候可能会提示不受信任
        ```
    1. 然后保存退出即可

1. Windows平台安装方式：
    1. 新建 pip 配置文件夹，直接在 user 用户目录中创建一个名为 pip 的文件夹 (即 %HOMEPATH%\pip )
    1. 在 pip 目录下创建一个 pip.ini 文件并编辑
    1. 其余步骤同 Linux 安装方式


*[返回目录](#目录)*
