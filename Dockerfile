# Use an official NodeJS runtime as a parent image
# https://hub.docker.com/_/node/
FROM node:10.13-jessie

# Set the working directory to /server
ENV APP_HOME /devproxy
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY ./server $APP_HOME/server
COPY ./configs $APP_HOME/configs
COPY ./configure.json $APP_HOME

COPY ./package.json $APP_HOME
COPY ./package-lock.json $APP_HOME
RUN npm install .

# Make ports available to the world outside this container
EXPOSE 5001

# Define environment variable
ENV NAME i2b2-devproxy

#VOLUME  $APP_HOME/hosting

CMD ["node", "server/bin/standalone.js", "configure.json"]



# START THIS CONTAINER USING THE FOLLOWING COMMANDS
#   D:\PATH_TO_DEVPROXY>  docker build -t i2b2/devproxy .
#   D:\PATH_TO_DEVPROXY>  docker run -p 5001:5001 -v "d:/PATH_TO_DEVPROXY/hosting:/devproxy/hosting" i2b2/devproxy