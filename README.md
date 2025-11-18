# GnuPG public key distributing using DNS TXT field

This proposes a method for registering a GnuPG signature verification key in a DNS TXT field and distributing it as a public key. 
We have created and published a script for this purpose.

## dns-gpg-retriever.sh

Extracts a GnuPG signature verification key registered in a DNS TXT field.

### How to use

$ dns-gpg-retriever.sh target-domain-name

## dns-gpg-textform.sh

Converts a GnuPG ASCII-formatted public key into a format suitable for registering in a DNS TXT field.

### How to use

$ dns-gpg-textform.sh your-gpg-publickey.asc

[2025-11-19] Hironobu Suzuki 
