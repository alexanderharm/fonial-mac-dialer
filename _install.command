#!/bin/bash

echo ""
echo "===================================================="
echo 'Ein Installationshelfer für eine bestimmte Durchwahl'
echo 'A installation helper for a specific extension'
echo "===================================================="
echo ""

# Get customer ID
echo 'Bitte geben sie ihre Kundennummer ein'
echo 'Please enter your customer ID'
read -p 'ID: ' id
echo ""

# Get GUID
echo 'Bitte geben sie ihre GUID ein'
echo 'Please enter your GUID'
read -sp 'GUID: ' guid
echo ""
echo ""

# Get extension
echo 'Bitte geben sie ihre Durchwahlnummer ein'
echo 'Please enter your extension number'
read -p 'Ext: ' ext
echo ""

# Get label
echo 'Bitte geben sie eine Bezeichnung für die Kontakte App ein'
echo 'Please enter a description for the Contacts app'
echo '("fonial", "fonial (<device>)" oder "fonial (<extension>)")'
read -p "Label [fonial (${ext})]: " label
if [[ -z "${label}" ]]; then
    label="fonial (${ext}) "
elif [[ ! "${label}" = *\  ]]; then
    label="${label} "
fi
echo ""

# Compile plugin
workingDir="${BASH_SOURCE%/*}"
LC_ALL=C sed -e "s/customerId : \"123456\"/customerId : \"${id}\"/g" \
    -e "s/guid : \"aa00bb11cc22dd33ee44ff55gg66hh77ii88jj99\"/guid : \"${guid}\"/g" \
    -e "s/ipTarget : \"11\"/ipTarget : \"${ext}\"/g" \
    -e "s/titleText : \"fonial \"/titleText : \"${label}\"/g" \
    "${workingDir}/fonial.applescript" |
    osacompile -o "${HOME}/Library/Application Scripts/com.apple.AddressBook/${label}ext${ext}.scpt"

# Restart Contacts app
osascript -e 'quit app "Contacts"' && osascript -e 'open app "Contacts"' > /dev/null 2>&1

# Display dialog
osascript -e 'display dialog "Installation abgeschlossen / Install completed"'

# Close window
osascript -e 'tell application "Terminal" to close front window' > /dev/null 2>&1 &