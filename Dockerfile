FROM nginx:alpine
WORKDIR /app
COPY index.html.txt /usr/share/nginx/html/index.html
EXPOSE 80
