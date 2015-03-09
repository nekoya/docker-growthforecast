# GrowthForecast JST

公式のコンテナをJSTで動かすためだけのイメージ

- https://registry.hub.docker.com/u/kazeburo/growthforecast/

## run the container

```
docker run -d -p 5125:5125 -v /host/data:/var/lib/growthforecast growthforecast
```

## test container

```
rspec -c -fd container_spec.rb
```
