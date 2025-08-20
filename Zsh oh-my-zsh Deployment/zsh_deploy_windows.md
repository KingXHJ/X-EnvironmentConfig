## Deploy ZSH on Windows with git bash

1. Download [ZSH package](https://packages.msys2.org/package/zsh?repo=msys&variant=x86_64)
1. unzip zsh package with [7-zip-zstd](https://github.com/mcmilk/7-Zip-zstd/releases)
1. Need unzip twice
    1. First get ```.tar```
    1. Next get files
1. Copy to Where git bash installed
1. Open git bash and tap ```zsh```
1. Set auto start zsh
    1. ```vim ~/.bashrc```
    1. Add
        ```
        if [ -t 1 ]; then
            exec zsh
        fi
        ```
    1. ```source ~/.bashrc```
1. Step into [install plugins](./zsh_deploy.sh)
