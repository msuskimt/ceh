#!/bin/bash

# Funkcja do wykrywania i zabijania podejrzanych procesów
check_and_kill() {
    # Wyszukaj aktywne połączenia związane z podejrzanymi procesami
    processes=$(netstat -antp 2>/dev/null | egrep "ESTABLISHED|LISTEN" | egrep "nc|perl|python|bash|sh" | awk '{print $7}' | cut -d'/' -f1 | sort -u)
    
    if [ -z "$processes" ]; then
        echo "$(date) - Nie znaleziono podejrzanych procesów."
    else
        echo "$(date) - Znaleziono podejrzane procesy:"
        echo "$processes"
        
        # Zabijanie procesów
        for pid in $processes; do
            if [[ "$pid" =~ ^[0-9]+$ ]]; then
                echo "Zatrzymuję proces PID: $pid"
                kill -9 $pid 2>/dev/null
                if [ $? -eq 0 ]; then
                    echo "Proces $pid został zatrzymany."
                else
                    echo "Nie udało się zatrzymać procesu $pid. Sprawdź ręcznie."
                fi
            fi
        done
    fi
}

# Pętla sprawdzająca co 2 sekundy
while true; do
    check_and_kill
    sleep 2
done
