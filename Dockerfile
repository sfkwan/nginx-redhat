FROM registry.access.redhat.com/ubi9/nginx-124:1-20.1724037701
USER root

# RUN useradd -u 10001 -g root -d /opt/app-root/src -s /sbin/nologin normal 

# RUN usermod -u 10001 default

RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log


USER 10001
CMD ["nginx", "-g", "daemon off;"]
