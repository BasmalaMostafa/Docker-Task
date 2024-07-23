FROM ubuntu
RUN apt-get update && apt-get install -y \
vim\
git
CMD [ "echo", "Hello World!" ]
ENTRYPOINT [ "echo" ]
MAINTAINER Basmala
EXPOSE 80
COPY file1 .
WORKDIR /docker
RUN echo "welcome from docker" > docker.txt
WORKDIR /container
RUN echo "welcome from container" > container.txt


FROM ubuntu
RUN apt-get update
CMD [ "echo", "Hello World!" ]

FROM nginx
COPY /project /usr/share/nginx/html
EXPOSE 80