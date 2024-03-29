# [<<< Back to index](../CEH_index.md)
## Crypto

### #pass crack

`john the ripper`

john --single --format=raw-sha1 hash.txt
john --wordlist=/usr/share/wordlists/rockyou.txt --format=raw-sha1 hash.txt
john --format=lm hash.txt `windows lm/ntlm hash from SAM`
zip2john file.zip > zip.hashes && john zip.hashes

#formats
john --format=des test.txt `DES-based (Traditional Unix) Crypt`\
john --format=md5crypt test.txt `MD5 Crypt`\
john --format=bcrypt test.txt `bcrypt (Blowfish Crypt)`\
john --format=sha1crypt test.txt `SHA-1 Crypt`\
john --format=sha256crypt test.txt `SHA-256 Crypt`\
john --format=sha512crypt test.txt `SHA-512 Crypt`\
john --format=nt test.txt `NTLM (Microsoft Windows)`\
john --format=lm test.txt `LM (Microsoft Windows)`\
john --format=krb5tgs test.txt `Kerberos 5 TGT (krb5tgs)`


### #tools

`CrypTool` - https://www.cryptool.org/en/ct1/downloads
