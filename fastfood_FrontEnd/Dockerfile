# FROM node:16
# RUN mkdir -p /usr/src/app
# WORKDIR /usr/src/app
# COPY package.json /usr/src/app
# RUN npm install
# COPY . /usr/src/app

# # start app
# CMD node_modules/.bin/ng serve --host 0.0.0.0 --port 4200 --disable-host-check


#----------------------------------------- Stage 1 ---------------------------------------
# Start FROM the node:alpine official image as a parent image which has Node.js LTS.
FROM node:16 as node

# Set the working directory to specify that all subsequent actions should be taken from the directory /usr/src/app in your image filesystem (never the host’s filesystem).
WORKDIR /usr/src/app

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Run the command inside your image filesystem.
RUN npm install

# Run Prod Build inside your image filesystem
RUN npm run build-prod

#----------------------------------------- Stage 2 ----------------------------------------
# Create lightweight image out of stage 1 using nginx

FROM nginx:alpine

# This is optional but it allow you to control where cache files in nginx get put if you want to
VOLUME /var/cache/nginx

# --from=node references to image output of Stage 1. then copy content of dist to location where nginx looks for static files by default
COPY --from=node /usr/src/app/dist/frontend /usr/share/nginx/html
# COPY --from=node /usr/src/app/dist/angular-ui /etc/nginx/html

# copy nginx configuration file which is fgoing to help with routes. there are lots of things you can do here as well like SSL Certificate/cacheing setting for browser
COPY ./nginx_config/nginx.conf /etc/nginx/conf.d/default.conf


########################### End ###########################