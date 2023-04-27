FROM ubuntu:22.04
RUN apt update && \
    apt install openssh-server sudo -y && \
    adduser myuser --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password && \
    echo "myuser:password" | chpasswd && \
    service ssh start
CMD ["/usr/sbin/sshd","-D"]
