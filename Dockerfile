FROM opensuse/leap:15.2

RUN zypper -n ar --no-check -p 105 \
    https://download.opensuse.org/repositories/network:/cryptocurrencies/openSUSE_Leap_15.2/ \
    network:cryptocurrencies && \
  zypper -n --gpg-auto-import-keys in -y dogecoind dogecoin-utils jq telegraf && \
  mkdir /srv/dogecoin

ADD telegraf-dogecoind.conf /srv/telegraf/

VOLUME /root/.dogecoin

CMD [ \
  "/bin/bash", "-c", \
    "/usr/bin/dogecoind & telegraf --config /root/.dogecoin/telegraf.conf --config-directory /srv/telegraf"]
