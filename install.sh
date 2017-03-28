#!/usr/bin/env bash

[ -z ${PREFIX} ] && PREFIX=/opt
[ -z ${BINDIR} ] && BINDIR=${PREFIX}/bin
[ -z ${ETCDIR} ] && ETCDIR=${PREFIX}/2slack

if [ $(id -u) -ne 0 ]; then
  echo "You need root privileges to run this script"
  exit 1
fi

if [ ! -f 2slack ]; then
  echo "Error: 2slack not found"
  exit 1
fi

echo "Installing 2slack to ${BINDIR}"
install -D -m 0755 2slack ${BINDIR}/2slack

if [ ! -f 2slack.conf.sample ]; then
  echo "Error: 2slack not found"
  exit 1
fi

echo "Installing 2slack.conf to ${ETCDIR}"
install -D -m 0644 2slack.conf.sample ${ETCDIR}/2slack.conf

# End of file
