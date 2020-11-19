from ubuntu

# install virtualbox
RUN apk --no-cache add \
    curl \
    curl -OL "https://download.virtualbox.org/virtualbox/5.2.2/virtualbox-5.2_5.2.2-119230~Ubuntu~xenial_amd64.deb" \
    dpkg -i virtualbox-5.2_5.2.2-119230~Ubuntu~xenial_amd64.deb

# install packer
RUN curl -OL "https://releases.hashicorp.com/packer/1.1.2/packer_1.1.2_linux_amd64.zip" \
    unzip ./packer_1.1.2_linux_amd64.zip
