#baseImage Ubuntu image
FROM ubuntu

#install nginx && for time consuming
RUN apt-get -y update && apt-get -y install nginx

#copy nginxconf to  target directory if i had my conf file
COPY ./default /etc/nginx/sites-available/default
#to make our html file and move it to countaner
COPY index2.html /usr/share/nginx/html/
ADD index3.html.tar.xz /usr/share/nginx/html/


EXPOSE 80

#run
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]