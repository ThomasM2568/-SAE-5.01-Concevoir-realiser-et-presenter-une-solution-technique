FROM nginx:latest

COPY nginx/default.conf /etc/nginx/conf.d/
COPY nginx/INETSRV1.pem /etc/ssl/certs/
COPY nginx/INETSRV1.key /etc/ssl/private/
COPY nginx/pass /etc/ssl/pass
EXPOSE 80
EXPOSE 443


