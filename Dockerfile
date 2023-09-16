FROM --platform=linux/amd64 ubuntu:22.04

ARG modular_auth

# RUN apt-get update && apt-get install -y \
#     curl \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    curl \
    gpg \
    && apt-get install -y apt-transport-https \
    && keyring_location=/usr/share/keyrings/modular-installer-archive-keyring.gpg \
    && curl -1sLf 'https://dl.modular.com/bBNWiLZX5igwHXeu/installer/gpg.0E4925737A3895AD.key' |  gpg --dearmor >> ${keyring_location} \
    && curl -1sLf 'https://dl.modular.com/bBNWiLZX5igwHXeu/installer/config.deb.txt?distro=debian&codename=wheezy' > /etc/apt/sources.list.d/modular-installer.list \
    && apt-get update \
    && apt-get install -y modular \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# RUN curl https://get.modular.com | MODULAR_AUTH=${modular_auth} sh -

RUN modular auth ${modular_auth} \
    && modular install mojo

RUN echo 'export MODULAR_HOME="$HOME/.modular"' >> ~/.bashrc \
    && echo 'export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"' >> ~/.bashrc

WORKDIR /app

ENTRYPOINT ["/bin/bash"]
