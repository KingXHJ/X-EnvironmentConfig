# CodeBoarding配置

## 目录
- [环境配置](#环境配置)
- [使用方式](#使用方式)
- [Q&A](#qa)
- [返回上一级README](../README.md)


## 环境配置
1. 终端使用uv安装python环境的时候，一定要提前```conda deactivate```，不然```/opt/anaconda3/bin```路径下的```conda```可执行文件就没了

1. 环境变量写在```codeboarding```目录下的```.env```文件里

1. 环境变量文件中的路径必须是绝对路径

1. 环境变量文件中的```ROOT_RESULT```必须是一个Git仓库文件夹


参考环境变量```.env```文件：
```sh
# LLM Provider (choose one)
GOOGLE_API_KEY=""
#OLLAMA_BASE_URL="http://192.168.6.200:11434"
# Core Configuration
CACHING_DOCUMENTATION=false
REPO_ROOT="/Users/kingxhj/Documents/Repos"
ROOT_RESULT="/Users/kingxhj/Documents/X-WORKS/X-GeneratedOnBoardings"
PROJECT_ROOT="/Users/kingxhj/Documents/Tools/CodeBoarding"
DIAGRAM_DEPTH_LEVEL=1
STATIC_ANALYSIS_CONFIG="/Users/kingxhj/Documents/Tools/CodeBoarding/static_analysis_config.yml"
# Optional
LANGSMITH_TRACING=false
```

## 使用方式

1. GitHub仓库的URL最好是SSH形式的，如```git@github.com:CodeBoarding/CodeBoarding.git```

1. 参考运行命令```python demo.py git@github.com:2noise/ChatTTS.git --output-dir /Users/kingxhj/Documents/Repos/ChatTTS/.codeboarding```，一定要放到对应URL的repo的```.codeboarding```目录下，这样vscode插件就能识别了

## Q&A

1. Ollama会报索引错误


*[返回目录](#目录)*