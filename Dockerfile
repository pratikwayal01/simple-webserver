# Use a smaller Node.js base image
FROM node:18-slim

# Set the working directory
WORKDIR /app

# Ensure node_modules is not copied from host
# Use .dockerignore for that (see below)

# Copy package files first (to optimize caching)
COPY package.json package-lock.json ./

# Install only production dependencies
RUN npm install --production

# Now copy the rest of the application code
COPY . .

# Expose the app port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
