# Use a base image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy HTML and CSS files
COPY index.html .
COPY app.css .

# Copy images
COPY images/* ./images/

# Expose port
EXPOSE 80

# Command to run the web server
CMD ["nginx", "-g", "daemon off;"]