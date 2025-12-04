# Dockerfile
FROM nginx:stable-alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site into nginx html folder
COPY site/ /usr/share/nginx/html/

# Expose port (informational — docker run -p 80:80 will map it)
EXPOSE 80

# Start nginx (default in image is fine)
CMD ["nginx", "-g", "daemon off;"]
