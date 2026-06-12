# Dockerfile — VAROSA Centro de Operaciones Preventas (Widget)
# Sirve el widget HTML estático (index.html) usando nginx alpine.
# Mismo patrón que varosa-oc-widget.
# Build: 2026-06-11

FROM nginx:alpine

# Copiar el widget al directorio default de nginx
COPY index.html /usr/share/nginx/html/index.html

# Puerto por defecto de nginx
EXPOSE 80

# nginx arranca automáticamente con el CMD default de la imagen base
