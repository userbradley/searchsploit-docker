FROM ubuntu:latest
WORKDIR /app
RUN apt update -y
RUN apt install git -y
RUN git clone https://github.com/offensive-security/exploitdb.git /opt/exploit-database
RUN ln -sf /opt/exploit-database/searchsploit /usr/local/bin/searchsploit
ENTRYPOINT ["searchsploit"]