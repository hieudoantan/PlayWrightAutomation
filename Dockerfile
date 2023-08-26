# Get the base image of Node version 20
FROM node:20

# Get the latest version of Playwright
FROM mcr.microsoft.com/playwright:focal
 
# Set the work directory for the application
WORKDIR /app
 
# Set the environment path to node_modules/.bin
ENV PATH /app/node_modules/.bin:$PATH

# COPY the needed files to the app folder in Docker image
COPY . ./


# Get the needed libraries to run Playwright
RUN npx playwright install

# Install the dependencies in Node environment
RUN npm install

WORKDIR /app/node_modules/.bin

# Run playwright test when container is created
CMD [ "npx", "playwright", "test", "--reporter=list" ]