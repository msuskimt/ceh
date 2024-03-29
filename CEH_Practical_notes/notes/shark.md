# [<<< Back to index](../CEH_index.md)
## Wireshark

ip.addr == 192.168.1.1 `Filtruj komunikację z IP 192.168.1.1 w OBU kierunkach`\
ip.src == 192.168.1.1/16 `Filtruj komunikację IP z SIECI 192.168.1.1 jako ADRES ŹRÓDŁOWY`\
ip.dst == 192.168.1.1 `Filtruj komunikację z IP 192.168.1.1 jako ADRES DOCELOWY`\
tcp.flags.syn == 1 and tcp.flags.ack == 0    `(How many machines) or Go to statistics IPv4 addresses--> Source and Destination ---> Then you can apply the filter given`\
tcp.flags.syn == 1   `(Which machine for dos)`\
http.request.method == POST   `(for passwords) or click tools ---> credentials`\
arp.duplicate-address-detected `Filtruj duplikaty pakietów ARP`\
frame contains "passw0rd" `Pakiety zawierające łańcuch "passw0rd" w dowolnym polu`\
tcp contains `"GET" Pakiety TCP zawierające łańcuch "GET" w dowolnym polu`\
http.request.method == "GET" `Filtruj pakiety zawierające metodę "GET"`\
data-text-lines == "POST" `#iltruj pakiety zawierające tekst "POST" w polu danych`\
http.cookie contains "SESSIONID=" `Filtruj pakiety ze specyficznym ciasteczkiem`\
http.response.status_code == 200 `Filtruj tylko odpowiedzi HTTP = 200`\
tcp.flags.syn == 1 `Pokaż tylko flagi TCP SYN`\
tcp[13] == 0x12 `Filtruj pakiety SYN-ACK`