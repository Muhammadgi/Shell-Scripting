#!/bin/bash

echo "Searching files modified between 1 and 3 days ago..."

sudo find / -type f -mtime +1 -mtime -3 -printf "%TY-%Tm-%Td %TT %p\n" 2>/dev/null > report.txt

echo "Search completed."
