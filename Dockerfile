# Usa a imagem oficial do NGINX
FROM nginx:latest

# Define o diretório de trabalho no container
WORKDIR /usr/share/nginx/html

# Copia todos os arquivos estáticos da pasta local para o container
COPY html/ .

# Expõe a porta 80
EXPOSE 80

# Comando padrão para iniciar o NGINX
CMD ["nginx", "-g", "daemon off;"]
