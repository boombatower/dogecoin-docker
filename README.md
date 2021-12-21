# dogecoin-docker

**Moved to [Gitlab](https://gitlab.com/boombatower-container/dogecoin).**

A `dogecoind` node in a container, built on openSUSE Leap from the `network:cryptocurrencies` repository.

## volume

The entire `/root/.dogecoin` directory should be left as a volume or bind mounted on the host. The latter makes configuring telegraf simple as the config can be included in the bind mount.

## telegraf

Provides a telegraf exporter the output of which can be configured `/root/.dogecoin/telegraf.conf`.
