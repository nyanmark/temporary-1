FROM debian:latest

LABEL maintainer="nyanmark"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y nginx curl wget

EXPOSE 80 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]