# ---- Dockerfile ----
FROM nginx:alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy built Angular app
COPY static/browser /usr/share/nginx/html

# Expose port (Render uses $PORT, but 80 is fine for the container)
EXPOSE 80

# Run in foreground
CMD ["nginx", "-g", "daemon off;"]