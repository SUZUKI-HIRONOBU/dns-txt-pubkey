#!/bin/bash
#
# Convert GnuPG v2 ascii armored multi-line public key format to one-line
# to use DNS TXT field.
#
# How to use
# $ dns-textform.sh my-public-key.asc
#
# By Hironobu Suzuki
# https://github.com/SUZUKI-HIRONOBU/dns-txt-pubkey/

cat "$*"  | sed -z -e 's/\n/ /g'

