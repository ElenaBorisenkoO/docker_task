FROM ubuntu:latest

WORKDIR /app

USER root

RUN apt-get update
RUN apt-get install -y nginx nodejs
RUN apt-get install -y cowsay
RUN ln -s /usr/games/cowsay /usr/bin/cowsay

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

ADD src /usr/share/nginx/html/
ADD src /var/www/html/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 90

# Set the default command to execute
# when creating a new container
CMD service nginx start
RUN cowsay "Everything is ready, my lord!"
