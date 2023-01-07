#Docker image for proxy for the accesible apps
FROM debian

RUN apt-get update -y && apt-get install nginx -y

ADD certification/1670684367.crt /etc/cert/powerzio/1670684367.crt
ADD certification/super_key.csr /etc/cert/powerzio/super_key.csr

ADD configs/* /etc/nginx/sites-available/
ADD configs/* /etc/nginx/sites-enabled/

RUN mkdir -p /var/project-files

EXPOSE 80
EXPOSE 443

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
