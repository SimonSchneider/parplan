# Lightweight static server for the single-page app (all logic in index.html)
FROM nginx:1.27-alpine

COPY index.html /usr/share/nginx/html/

EXPOSE 80
