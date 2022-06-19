# docker-demo

## 🚀运行
```bash
# 生成 image
docker build -t first-docker .

# 运行 container
docker run -d -p 127.0.0.1:8088:8088 --rm --name first-container first-docker
# b764903b06142059036e2abd10f5dc62a2a30902705b2025f071ec6f7edd815c
```

## 查看容器状态
```bash
docker ps
# CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                      NAMES
# b764903b0614   first-docker   "docker-entrypoint.s…"   53 seconds ago   Up 52 seconds   127.0.0.1:8088->8088/tcp   first-container 
```

## 测试容器
```bash
curl http://localhost:8088
# Hello World!%
```

## 关闭容器
```bash
# docker stop <container-id>
docker stop <container-id>
```