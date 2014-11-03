FROM ubuntu:14.04.1
COPY ./script/bootstrap /script/bootstrap
RUN ./script/bootstrap
