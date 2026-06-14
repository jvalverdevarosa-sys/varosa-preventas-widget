# Dockerfile — VAROSA Centro de Operaciones Preventas (Widget)
# Sirve los HTML estáticos con nginx alpine y desactiva el cache del navegador
# para que cada deploy aparezca de inmediato (incluido el iframe de Creator).
# Build: 2026-06-14
FROM nginx:alpine
# Copiar todos los HTML del repo
COPY *.html /usr/share/nginx/html/
# Config de nginx con no-cache (reemplaza la default)
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
