## 应用简介

这是一个 Python 结合 Http Trigger 的 Helloworld 示例。

![helloworld](https://yqfile.alicdn.com/ca34a83d0fc289dc52a761dc42fda923b2b071d8.png)

## 调用示例

```bash
curl http://localhost:8000/2016-08-15/proxy/GreetingService/GreetingFunction
```

请将上面 `http://localhost:8000/` 替换为该应用部署后的地址。

## 工作原理

这是一个简单函数结合 Http Trigger 的应用。Http Trigger 以 HTTP GET 方法对外暴露服务，函数接受到请求以后返回 Helloworld 字符串。

该应用的架构图如下：

![_2019_12_05_10_24_13](https://yqfile.alicdn.com/87d5502c9828eeb7e4c01aefde03792f12b4ebee.png)

项目源码：https://github.com/vangie/fc-helloworld-python