#Docker image for dns image
FROM debian

EXPOSE 53

#Updates the system
RUN apt-get update -y && apt-get upgrade -y

#Installs dns bind9
RUN apt-get install bind9 bind9utils -y

#Set the domain name for the docker instance
RUN echo "powerzio.net" > "/etc/hostname"

#Add the localhost with the domain name
RUN echo "127.0.0.1 powerzio.net" >> "/etc/hosts"

ADD ../../scripts/dns/configs/db.powerzio.net /etc/bind/db.powerzio.net

RUN echo "zone \"powerzio.net\" {\n\
  type master;\n\
  file \"/etc/bind/db.powerzio.net\";\n\
};" >> "/etc/bind/named.conf.local"

