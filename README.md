# GrowthForecast JST

公式のコンテナをJSTで動かすためだけのイメージ

- https://registry.hub.docker.com/u/kazeburo/growthforecast/

## run the container

```
docker run -d -p 5125:5125 nekoya/growthforecast-jst
```

## data backup

### mount host directory

```
docker run -d -p 5125:5125 -v /host/data:/var/lib/growthforecast nekoya/growthforecast-jst
```

### docker cp

```
docker cp {container}:/var/lib/growthforecast .
```

## test container

```
rspec -c -fd container_spec.rb
```
