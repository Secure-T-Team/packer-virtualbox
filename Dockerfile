from symbols/virtualbox

# install virtualbox
RUN apt-get -y update && \
    apt-get -y install unzip && \
    apt-get -y clean && \
    PACKER_VERSION=`wget -O- https://releases.hashicorp.com/packer/ 2> /dev/null \
      | fgrep '/packer' \
      | head -1 \
      | sed -r 's/.*packer_([0-9.]+).*/\1/'` && \
    wget -O /root/packer.zip https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip && \
    cd /root && \
    unzip packer.zip && \
    chmod +x packer && \
    mv packer /usr/local/bin && \
    rm packer.zip && \
    sudo /sbin/rcvboxdrv setup
