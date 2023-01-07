#Docker image for proxy for the accesible apps
FROM nginx

ADD certification/1670684367.crt /etc/cert/powerzio/1670684367.crt
ADD certification/super_key.csr /etc/cert/powerzio/super_key.csr

ADD configs/bank.powerzio.net /etc/nginx/sites-available
ADD configs/bank.powerzio.net /etc/nginx/sites-enabled

EXPOSE 80
EXPOSE 443

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
