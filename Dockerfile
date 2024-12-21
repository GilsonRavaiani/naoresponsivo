# Use uma imagem base do Nginx
FROM nginx:latest

# Copie os arquivos do seu projeto para o diretório padrão do Nginx
COPY . /usr/share/nginx/html

# Copie a configuração personalizada do Nginx
COPY custom_nginx.conf /etc/nginx/conf.d/default.conf

# Exponha a porta 86 para acesso externo
EXPOSE 86

# Comando para iniciar o servidor Nginx
CMD ["nginx", "-g", "daemon off;"]
