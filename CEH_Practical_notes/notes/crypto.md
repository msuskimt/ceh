# [<<< Back to index](../CEH_index.md)
## Crypto

### #pass crack

`john the ripper`

john --single --format=raw-sha1 hash.txt\
john --wordlist=/usr/share/wordlists/rockyou.txt --format=raw-sha1 hash.txt\
john --format=lm hash.txt `windows lm/ntlm hash from SAM`

zip2john file.zip > zip.hashes && john zip.hashes

`formats`

john --format=des test.txt `DES-based (Traditional Unix) Crypt`\
john --format=md5crypt test.txt `MD5 Crypt`\
john --format=bcrypt test.txt `bcrypt (Blowfish Crypt)`\
john --format=sha1crypt test.txt `SHA-1 Crypt`\
john --format=sha256crypt test.txt `SHA-256 Crypt`\
john --format=sha512crypt test.txt `SHA-512 Crypt`\
john --format=nt test.txt `NTLM (Microsoft Windows)`\
john --format=lm test.txt `LM (Microsoft Windows)`\
john --format=krb5tgs test.txt `Kerberos 5 TGT (krb5tgs)`

`hashcat`

hashcat -m 0 hashes.txt wordlist.txt `Atak słownikowy na hasła zaszyfrowane za pomocą algorytmu MD5`

`formats`

SHA-1: -m 100\
bcrypt (Blowfish Crypt): -m 3200\
SHA-256: -m 1400\
SHA-512:-m 1800\
LM: -m 3000\
NTLM -m 1000

### #online crack

`hydra`

hydra -l user -P list.txt ftp://10.10.10.10 `ssh smtp pop3 imap`\
hydra -l username -P list.txt http://target_ip http-get /protected-page\
hydra -l username -P list.txt http-post-form "http://target_ip/login.php:user=^USER^&pass=^PASS^:Login failed"


### #tools

`CrypTool` - https://www.cryptool.org/en/ct1/downloads \
`hashes databases` - https://hashes.com/en/decrypt/hash \
`hashes databases` - https://crackstation.net/
