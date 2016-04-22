#This is an example of a DockerFile
#N.B Instructions are processed top to down.
#Version no: 0.0.1

#Base Image
#FROM ubuntu:14.04 #avoid using 'latest tag'
#unfortunately I only have the latest tag.

#Multiple FROM commands are are accepted
FROM ubuntu:latest

#MAINTAINER COMMAND
MAINTAINER Bethwel Kimutai<qymspace>


#RUN COMMAND: Used to execute commands using /bin/sh -c
RUN mkdir /home/qymspace

#RUN COMMAND (exec form) # if we suspect the image doesnt have a the sh shell.
#Also allows using a different shell by specifying it as the index item in array with -c option
#only double quotes accepted
RUN ["mkdir", " -p", "/home/qymspace/created_by_exec" ]

#EXPOSE COMMAND: Used to expose ports
EXPOSE 80

#ENTRYPOINT ["COMMAND", "OPTION", "PARAMETER"] -overide by --entrypoint option to run command.
#
#CMD ["COMMAND", "OPTION", "PARAMETER"] -overide by run command

#command to build
#docker build -t="qymspace/DockerFile_Test" . 
#docker build -t="qymspace/dockerfile_test" https://git.github.com/qymspace/dockefile.git
#docker build -t="qymspace/dockerfile_test" -f /path/to/a/Dockerfile
#MULTIPLE -t ACCEPTED FOR SEVERAL TAGS
#
#
#
#
#
#
#ENV KIMBE=/media/qysmpace/6244/Users/kimbe shared=/media/qymspace/shared
#
#ADD initdir.sh
#
#COPY initdir.sh ~
#
#LABEL
LABEL company="vomer.inc"\
product="Docker Image"\
version="0.0.1"

#
#USER
#
#WORKDIR
#
#VOLUME
#
#STOPSIGNAL
#
#ONBUILD
#
#
#VOLUME
#
#USER
#
#ARGS name=default_value -use with --build-arg name=another_value
