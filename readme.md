# openresty-script-injection-proxy

## Discription
You want to demonstrate your javascript code to a customer? Setup this Proxy and have you Code injected into his site. 
Uncomplicated Demonstration.


## Build Server from Dockerfile
```
cd ps-server-smartgateway
docker build -t openresty-script-injection-proxy -f Dockerfile_build.
```


## Start Server for Dev Environment
```
docker run --rm -it \
      --name my-app-dev8 \
      -v "$(pwd)/nginx/conf":/opt/openresty/nginx/conf \
      -v "$(pwd)/nginx/logs":/opt/openresty/nginx/logs \
      -p 80:80 \
      openresty-script-injection-proxy "$@"
```

start editing nginx/conf/nginx.conf
## Build Deployable
```
docker build -t openresty-script-injection-proxy/dev:0.0.1 .
```

## Deploy your Container
```
docker run --rm -it \
      -p 80:80 \
      openresty-script-injection-proxy/dev:0.0.1
```


open http://localhost/?demo_domain=http://www.example.com