Git Hook 服务器脚本.  

当客户端 `push` 代码的时候触发，上传特定文件到 CDN.

### 依赖
- python 3
- git
- qiniu python sdk

### 使用
全局安装 `qiniu` SDK
``` 
$ pip install qiniu
```

复制脚本到项目所在 `hooks` 目录
```
$ cp pre-receive path/to/project/.git/hooks
```
