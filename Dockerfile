FROM opensuse/leap:15.2

RUN zypper -n ar --no-check -p 105 \
    https://download.opensuse.org/repositories/network:/cryptocurrencies/openSUSE_Leap_15.2/ \
    network:cryptocurrencies && \
  zypper -n --gpg-auto-import-keys in -y dogecoind dogecoin-utils && \
  mkdir /srv/dogecoin

VOLUME /root/.dogecoin

ENTRYPOINT /usr/bin/dogecoind
