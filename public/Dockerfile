From:node:v18.16.0-slim

# Set the working directory
WORKDIR /app
# Copy package.json and package-lock.json
COPY package.json package-lock.json ./
# Install dependencies  
RUN npm install --production
# Copy the rest of the application code
COPY . .
# Expose the port the app runs on
EXPOSE 3000
# Start the application
CMD ["node", "server.js"]

# Use the default command to run the application
# CMD ["npm", "start"]
# Use the default command to run the application        