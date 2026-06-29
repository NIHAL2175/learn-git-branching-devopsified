# ----------------------------------------------------
# Stage 1: Build the Learn Git Branching application
# ----------------------------------------------------

FROM node:20-alpine AS base

# Install git (required by gulp build)
RUN apk add --no-cache git

# Set working directory
WORKDIR /app

# Copy the complete project
COPY . .

# Install dependencies
RUN yarn install

# Build the application
RUN yarn gulp build

# ----------------------------------------------------
# Stage 2: Create a lightweight production image
# ----------------------------------------------------

FROM nginx:stable-alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy the application
COPY --from=base /app/index.html /usr/share/nginx/html/
COPY --from=base /app/build /usr/share/nginx/html/build
COPY --from=base /app/assets /usr/share/nginx/html/assets
COPY --from=base /app/generatedDocs /usr/share/nginx/html/generatedDocs

# Expose the application port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]   
