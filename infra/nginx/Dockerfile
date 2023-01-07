#Docker image for proxy for the accesible apps
FROM nginx

ADD certification/1670684367.crt /etc/cert/powerzio/1670684367.crt
ADD certification/super_key.csr /etc/cert/powerzio/super_key.csr

ADD ./configs/bank.powerzio.net /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/bank.powerzio.net /etc/nginx/sites-enabled/bank.powerzio.net

EXPOSE 80
EXPOSE 443

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
