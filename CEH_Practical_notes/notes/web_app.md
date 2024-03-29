# [<<< Back to index](../CEH_index.md)
## Web App Attack

### #wordpress

`wpscan`

wpscan –url IP `basic scan`
wpscan –url IP -e u `enumerating website users`
wpscan –url IP -U USER_NAME -P PATH_TO_WORDLIST `brute-forcing password for the identified user`

`msfconsole`

serach and use wordpress_login_enum
set PASS_FILE passlist.txt
set RHOSTS IP
set RPORT PORT
set TARGETURI http://IP:PORT/
set USERNAME user


