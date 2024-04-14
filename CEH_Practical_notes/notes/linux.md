# [<<< Back to index](../CEH_index.md)

## PROCESY


### ukrycie procesu
`bash -c  "exec -a [kworker/u9:2] vim"`

### wyszukanie modułów jądra bez podpisu

`lsmod  | awk 'NR > 1 {print $1}' | while read -r module; do modinfo "$module" | grep -q "^sig_key:" || echo "Modul bez podpisu: $module"; done`

### wyszukanie tych samych podpisów modulów

`lsmod | awk '{print $1}' | while read -r module; do key=$(modinfo -F sig_key "$module" 2>/dev/null); if [ -n "$key" ]; then echo "$key"; fi; done | sort | uniq -c | awk '{print $2 ": " $1}'`


### skrypt do wyszukiwania modułuw jadra po podpisie [link](../scripts/sig_key.sh)

### listowanie modułów z zewnetrznych źródeł
`cat /proc/modules | grep "("`
