FROM nginx:alpine

# Copy the static website files
COPY index.html /usr/share/nginx/html/index.html

# Copy the custom Nginx server configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
