# 配置 Cloudflare AI Worker

## 目录
- [配置Worker](#配置worker)
- [配置域名](#配置域名)
- [使用命令](#使用命令)
- [返回上一级README](../README.md)


## 配置Worker
1. 在Cloudflare官网上创建一个Worker

1. 填写```.js```文件[内容]()


## 配置域名

1. 点击```触发器```

1. 点击```自定义域```


## 使用命令

使用命令

```sh
curl -X POST https://example.com/ -d '{"prompt":"Write a poem about clouds"}' | jq -r .response

curl -X POST https://xllama2.kingxhj.eu.org/ -d '{"messages": [{ "role": "system", "content": "You are a helpful assistant." }, { "role": "user", "content": "Who won the world series in 2020?" }]}' | jq -r .response
```

实现交互


## 补充

```index.js```由claude[生成](./ClaudeCorrectJavaScript.md)


*[返回目录](#目录)*