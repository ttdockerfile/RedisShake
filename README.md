在原仓库的基础上删除ENTRYPOINT 

示例

```shell
docker run -id \
-v config/shake.toml:/app/shake.toml \
buyfakett/RedisShake \
/app/redis-shake /app/shake.toml
```