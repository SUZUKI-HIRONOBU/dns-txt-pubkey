#!/bin/bash
#
# Retrieve GnuPG public key from DNS TXT field.
#
# $ dns-gpg-retriever.sh target-domain-name
#
# By Hironobu Suzuki 
# https://github.com/SUZUKI-HIRONOBU/dns-txt-pubkey/
#
# dns-gpg-retriever.sh Copyright (C) 2025  Hironobu Suzuki
# GPLv3 or later.

echo '-----BEGIN PGP PUBLIC KEY BLOCK-----'
echo -n 'Version: GnuPG v2'

dig -t txt "$*" | grep 'PGP' |\
    sed -e 's/" "//' -e 's/^.*\t//' -e 's/"//'  -e 's/"//' |\
    sed -e 's/-----BEGIN PGP PUBLIC KEY BLOCK----- Version: GnuPG v2//' |\
    sed -e 's/ -----END PGP PUBLIC KEY BLOCK-----//' |\
    sed -e 's/ /\n/g' 

echo '-----END PGP PUBLIC KEY BLOCK-----'









