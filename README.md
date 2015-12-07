# Docker GrowthForecast

GrowthForecast container that supports command line options.

- https://registry.hub.docker.com/u/kazeburo/growthforecast/

## run the container with options

```
docker run -d -p 5125:5125 nekoya/growthforecast --front-proxy 172.17.0.1 --time-zone Asia/Tokyo
```

## data backup

### mount host directory

```
docker run -d -p 5125:5125 -v /host/data:/var/lib/growthforecast nekoya/growthforecast
```

### docker cp

```
docker cp {container}:/var/lib/growthforecast .
```
