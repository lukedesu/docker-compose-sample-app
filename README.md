<!-- ## 创建开发镜像
```
docker build -t echoteas-api-dev .
```

## 容器运行开发镜像
```
docker run --rm -it -p 9090:9090 -v $(pwd):/go/src/echoteas-api echoteas-api-dev
``` -->
# 开发环境

### 运行容器
```sh
./bin/start.sh
```

### 其他操作
```sh
docker-compose up --build #运行前先编译镜像
docker-compose up -d #后台执行
docker-compose ps #容器列表
docker-compose down --remove-orphans #终止并清理被遗弃容器
docker-compose build api #编译某个镜像
docker-compose logs -f #查看所有日志
docker-compose logs -f web #查看容器web日志
```

# 生产环境

### 编译镜像
```sh
./bin/build.sh
```
或
```sh
docker build -t echoteas-api-production -f ./docker/api/Dockerfile.production .
```

### 运行镜像
```sh
docker run --rm -it -p 9090:9090 echoteas-api-production
```