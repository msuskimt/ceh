# [<<< Back to index](../CEH_index.md)
## ENUMERATION

nbtstat -a 10.10.10.10 (-a displays NEtBIOS name table) `NetBios enum using windows`

nmap -sV -v --script nbstat.nse 10.10.10.16 `NetBios enum using nmap`\
nmap -sU -p 161 10.10.10.10 (-p 161 is port for SNMP) `--> Check if port is open SNMP enum using nmap`

snmp-check 10.10.10.10 `( It will show user accounts, processes etc) --> for parrot`

dnsrecon -d www.google.com -z `DNS recon/enum`

### NetBios enum using enum4linux

`enum4linux -u martin -p apple -n 10.10.10.10 (all info)`
`enum4linux -u martin -p apple -P 10.10.10.10 (policy info)` 

### WINDOWS cmd stuff

- systeminfo
- net users `All users`
- dir /b /ad "C:\Users" `directory list`
- net user %username% `info about a user (me)`
- net accounts `Information about password requirements`
- wmic USERACCOUNT Get Domain,Name,Sid
- net user /add [username] [password] `Create user`
- qwinsta `Anyone else logged in?`
- runas /netonly /user<DOMAIN>\<NAME> "cmd.exe" `::The password will be prompted #Lauch new cmd.exe with new creds (to impersonate in network)`

1. Local:
- net localgroup `All available groups`
- net localgroup Administrators `Info about a group (admins)`
- net localgroup administrators [username] /add `Add user to administrators`

2. Domain:
- net group /domain `info about domain groups`
- net group /domain <domain_group_name> `Users that belongs to the group`
<br>
- route print `Print available routes`
- arp -a `Know hosts`
- netstat -ano `opened ports`
- type C:\WINDOWS\System32\drivers\etc\hosts `local dns`
- ipconfig /displaydns | findstr "Record" | findstr "Name Host" `local dns and hosts`
<br>
- net view `Get a list of computers`
- net view /all /domain [domainname] `Shares on the domains`
- net view \\computer /ALL `List shares of a computer`
- net use x: \\computer\share `Mount the share locally`
- net share `Check current shares`