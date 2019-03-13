FROM centos:latest

RUN yum install -y sudo && \
    useradd user && \
    echo "user ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user

USER user

CMD ["/bin/sleep infinity"]
