#!/bin/sh
cp /fetchmail/fetchmailrc /etc/fetchmailrc.d/
chown fetchmail /etc/fetchmailrc.d
chmod 400 /etc/fetchmailrc.d
fetchmail -d 900 -N -f /etc/fetchmailrc.d/fetchmailrc -vv