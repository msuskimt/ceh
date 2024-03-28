# [<<< Back to index](../CEH_index.md)
## ENUMERATION

nbtstat -a 10.10.10.10 (-a displays NEtBIOS name table) `NetBios enum using windows`

nmap -sV -v --script nbstat.nse 10.10.10.16 `NetBios enum using nmap-`\
nmap -sU -p 161 10.10.10.10 (-p 161 is port for SNMP) `--> Check if port is open SNMP enum using nmap-`

snmp-check 10.10.10.10 `( It will show user accounts, processes etc) --> for parrot`

dnsrecon -d www.google.com -z `DNS recon/enum`

### NetBios enum using enum4linux

`enum4linux -u martin -p apple -n 10.10.10.10 (all info)`
`enum4linux -u martin -p apple -P 10.10.10.10 (policy info)` 