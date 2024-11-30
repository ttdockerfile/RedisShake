在[原仓库](https://github.com/tair-opensource/RedisShake)的基础上删除ENTRYPOINT 

示例

```shell
#!/bin/bash

name=redis-shake

docker stop ${name}
docker rm ${name}

docker run -id \
--restart=always \
--network=host \
--name=${name} \
-v ./config/shake.toml:/app/shake.toml \
buyfakett/redis-shake \
/app/redis-shake /app/shake.toml
```

```toml
[sync_reader]
cluster = false
address = "192.168.1.1:6379"
password = "password"
tls = false
sync_rdb = true
sync_aof = true

[redis_writer]
cluster = false
address = "192.168.1.1:6380"
password = "password"
tls = false
```
