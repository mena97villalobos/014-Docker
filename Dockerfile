FROM ubuntu:latest

RUN apt upgrade -U -y
RUN apt install build-essential cmake gdb -y

COPY ./serverroot ./serverroot
COPY ./Servers_Docker ./Servers_Docker

EXPOSE 10000

ENTRYPOINT ["./Servers_Docker", "10000"]