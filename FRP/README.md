# FRP Setup

## 目录
- [下载](#下载)
- [配置](#配置)
- [启动](#启动)
- [返回上一级README](../README.md)

## 提醒

FRP 无法直接穿过 GFW，会被墙的。

一个半小时血与泪的教训

## 下载
1. 下载 51.3 版本的 frp
    - 因为最新版本的配置文件从 frpc.ini 改成了 frpc.toml

    ```sh
    wget https://github.com/fatedier/frp/releases/download/v0.51.3/frp_0.51.3_linux_amd64.tar.gz
    ```

1. 解包
    ```sh
    tar -zxvf frp_0.51.3_linux_amd64.tar.gz
    ```

1. 进入目录中
    ```sh
    cd frp_0.51.3_linux_amd64
    ```

## 配置
1. 将 ```frpc(frps)``` 移动至 ```/usr/local/bin``` 目录下
    ```sh
    sudo cp ./frpc /usr/local/bin/
    sudo cp ./frps /usr/local/bin/
    ```

    必要的情况需要将frpc(frps)改成可执行文件：
    ```sh
    sudo chmod +x frpc
    sudo chmod +x frps
    ```

1. 将 ```frpc.ini(frps.ini)``` 移动至 ```/etc/frp/``` 。如果 ```/etc``` 目录下没有 ```frp``` 目录，则需要去创建：
    ```sh
    cd /etc
    sudo mkdir ./frp

    cd ~/frp_0.51.3_linux_amd64
    sudo cp ./frpc.ini /etc/frp/
    sudo cp ./frps.ini /etc/frp/

    sudo vim /etc/frp/frpc.ini
    sudo vim /etc/frp/frps.ini
    ```
    1. [frpc.ini](./example/frpc.ini)
    1. [frps.ini](./example/frps.ini)

1. 将 ```frpc.service(frps.service)``` 创建在 ```/lib/systemd/system/``` 目录下
    ```sh
    sudo vim /lib/systemd/system/frpc.service
    sudo vim /lib/systemd/system/frps.service
    ```

    1. [frpc.service](./example/frpc.service)
    1. [frps.service](./example/frps.service)

## 启动

使用命令：
```sh
sudo systemctl enable frpc
sudo systemctl enable frps

sudo systemctl start frpc
sudo systemctl start frps

sudo systemctl status frpc
sudo systemctl status frps
```


*[返回目录](#目录)*
