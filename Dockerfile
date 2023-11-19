FROM node

WORKDIR /app

# First, copy only the package.json and package-lock.json (if available)
COPY package*.json .

# Install dependencies
RUN npm install

# Then copy the rest of your application
COPY . .

# Expose port 3000
EXPOSE 3000

# Set environment variable
ENV PORT 3000

# Define the command to run your app (npm start)
CMD ["npm", "start"]
