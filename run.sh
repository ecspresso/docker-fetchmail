#!/bin/sh
cp /fetchmail/fetchmailrc /etc/fetchmailrc
chown fetchmail /etc/fetchmailrc
chmod 400 /etc/fetchmailrc
exec fetchmail -d 900 -N -f /etc/fetchmailrc -vv