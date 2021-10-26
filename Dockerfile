FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
COPY index.html /usr/share/nginx/html
EXPOSE 8080
CMD  ["nginx","-g", "daemon off;"]
