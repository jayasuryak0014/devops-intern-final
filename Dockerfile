FROM nginx:alpine

ARG BUILD_ID=local

COPY index.html /usr/share/nginx/html/index.html

RUN sed -i "s/BUILD_ID/${BUILD_ID}/g" /usr/share/nginx/html/index.html

EXPOSE 80
