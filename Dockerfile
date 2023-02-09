FROM openjdk:18-jdk

# Install node
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm install

# Copy the application
COPY * /app/

# Set the working directory
WORKDIR /app

# Run the application
CMD ["node", "index.js"]