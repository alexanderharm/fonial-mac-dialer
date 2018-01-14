#!/bin/bash

echo ""
echo "============================================================"
echo 'Es werden alle Plugins für eine bestimmte Durchwahl entfernt'
echo 'All plugins for a specific extension are removed'
echo "============================================================"
echo ""

# Get extension
echo 'Bitte geben sie ihre Durchwahlnummer ein'
echo 'Please enter your extension number'
read -p 'Ext: ' ext
echo ""

# Remove plugins
find "${HOME}/Library/Application Scripts/com.apple.AddressBook" -type f -name "*ext${ext}.scpt" -delete

# Restart Contacts app
osascript -e 'quit app "Contacts"' && osascript -e 'open app "Contacts"' > /dev/null 2>&1

# Display dialog
osascript -e 'display dialog "Deinstallation abgeschlossen / Uninstall completed"'

# Close window
osascript -e 'tell application "Terminal" to close front window' > /dev/null 2>&1 &