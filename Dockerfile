# Usar uma imagem base
FROM ubuntu:latest

# Autor
LABEL maintainer="seu-email@exemplo.com"

# Atualizar o sistema e instalar o Apache
RUN apt-get update && \
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    apt-get install -y apache2

# Comando padrão
CMD ["apachectl", "-D", "FOREGROUND"]

