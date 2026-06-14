# Dockerfile — VAROSA Centro de Operaciones Preventas (Widget)
# Sirve los widgets HTML estáticos (index.html, dashboard_preventas.html) con nginx alpine.
# Mismo patrón que varosa-oc-widget.
# Build: 2026-06-14
FROM nginx:alpine
# Copiar TODOS los HTML del repo al directorio que publica nginx
COPY *.html /usr/share/nginx/html/
# Puerto por defecto de nginx
EXPOSE 80
# nginx arranca automáticamente con el CMD default de la imagen base
