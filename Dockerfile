FROM openresty-script-injection-proxy

RUN touch /opt/openresty/nginx/logs/error.log
ADD nginx/conf /opt/openresty/nginx/conf

CMD ["nginx", "-g", "daemon off; error_log /dev/stderr info;"]
