#Docker image for proxy for the accesible apps
FROM debian

RUN apt-get update -y && apt-get install nginx -y

ADD certification/1670684367.crt /etc/cert/powerzio/1670684367.crt
ADD certification/super_key.csr /etc/cert/powerzio/super_key.csr

ADD ./configs/bank.powerzio.net /etc/nginx/sites-available/bank.powerzio.net
ADD ./configs/bank.powerzio.net /etc/nginx/sites-enabled/bank.powerzio.net

ADD ./configs/files.powerzio.net /etc/nginx/sites-available/files.powerzio.net
ADD ./configs/files.powerzio.net /etc/nginx/sites-enabled/files.powerzio.net

RUN mkdir -p /var/project-files
RUN chown -R www-data:www-data /var/project-files

EXPOSE 80
EXPOSE 443

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
