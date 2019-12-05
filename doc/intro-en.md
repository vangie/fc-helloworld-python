## Introduction

This is a Helloworld example with Python runtime and Http Trigger.

![helloworld](https://yqfile.alicdn.com/ca34a83d0fc289dc52a761dc42fda923b2b071d8.png)

## Usage

```bash
curl http://localhost:8000/2016-08-15/proxy/GreetingService/GreetingFunction
```

Please replace the above string `http: // localhost: 8000 /` with the deployed address of your application.

## Architecture & Design

This is a application that is a simple function with Http Trigger. The Http Trigger exposes service with GET method, and the function responses the 'hello world' string after receiving the request.

The architecture diagram of the application is as follows:

![_2019_12_05_10_24_13](https://yqfile.alicdn.com/87d5502c9828eeb7e4c01aefde03792f12b4ebee.png)

Source code: https://github.com/vangie/fc-helloworld-python