#!/bin/bash

key=$1

# Sprawdzamy czy podano argument
if [ -z "$key" ]; then
    echo "Użycie: $0 <podpis_klucza>"
    exit 1
fi

# Wyszukujemy moduły jądra z określonym podpisem klucza
for module in $(lsmod | awk '{print $1}'); do
    module_key=$(modinfo -F sig_key "$module" 2>/dev/null)
    if [ "$module_key" = "$key" ]; then
        echo "$module"
    fi
done
