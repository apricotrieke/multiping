#!/usr/bin/env bash

FILE="${1:-ips.txt}"

if [ ! -f "$FILE" ]; then
    echo "Create $FILE with one IP per line or pass filename as first arg"
    exit 1
fi

# arrays for results
reachable=()
unreachable=()

echo "Checking IPs from $FILE..."
echo
while IFS= read -r ip; do
    # skip empty lines and comments
    [ -z "$ip" ] && continue
    case "$ip" in
        \#*) continue ;; 
    esac

    # ping the ip once and check for a packet reception
    if ping -c 1 "$ip" 2>&1 | grep -q "1 packets received"; then
        printf "%-20s OK\n" "$ip"
    else
        printf "%-20s NO RESPONSE\n" "$ip"
    fi
done < "$FILE"

echo 
echo "Done!"
