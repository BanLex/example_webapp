FROM alpine
RUN apk update && \
    apk add nginx

COPY sites.conf /etc/nginx/http.d/default.conf

EXPOSE 80 443

CMD ["nginx"]
