#!/bin/bash
openssl genrsa -out private.key 2048
echo 'When stcipt ask you Common Name (e.g. server FQDN or YOUR name) []:, enter ip addres or url of your server.'
echo ''
echo 'Press Enter to continue.'
openssl req -new -key private.key -out req.csr
openssl x509 -req -days 365 -in req.csr -signkey private.key -out public.crt
echo ''
echo 'public.crt - your public certificate.'
echo 'private.key - your private key.'
echo ''
ls



