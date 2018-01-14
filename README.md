# fonial-mac-dialer

An unofficial AppleScript plugin to enable dialling from the Contacts app via [fonial.de](https://www.fonial.de/)

This plugin is based on/inspired by David Kreitschmann's (@neffs) `Snom.scpt` plugin ([https://github.com/k3com/mac_dialer]()).

*For an English version see below*

## German

### 1. Benutzung

* Öffne die Kontakte App
* Wähle einen Kontakt
* Klicke auf das Etikett links von der Telefonnummer und selektiere die gewünschte Aktion

### 2. Voraussetzungen

* Ein Kundenkonto bei [fonial.de](https://www.fonial.de/)
* API Option ist aktiviert [https://www.fonial.de/hilfe/api/]()
* Kundennummer
* GUID (erhalten nach Aktivierung der API)
* Durchwahl der Nebenstelle

### 3. Installation

* Laden sie die neueste Version von der Releases page
* Entpacken sie die Datei

##### a) Geführte Installation

* Doppelklick auf `_install.command`
* Beantworten sie die Fragen

##### b) Manuelle Installation

* Editieren sie `fonial.scpt` (`customerId`, `guid`, `ipTarget`, `titleText`)
* Kopieren sie das editierte `fonial.scpt` in `~/Library/Application Scripts/com.apple.AddressBook/`
* Starten sie die Kontakte App neu

### 4. Deinstallation

##### a) Geführte Deinstallation

* Doppelklick auf `_uninstall.command`
* Geben sie die Durchwahl der Nebenstelle ein, die sie entfernen möchten

##### b) Manuelle Deinstallation

* Löschen sie die gewünschten Plugins aus `~/Library/Application Scripts/com.apple.AddressBook/`
* Starten sie die Kontakte App neu


## English

### 1. Usage

* Open Contacts app
* Navigate to a contact
* Click on the label left of the phone number and select the desired action

### 2. Prerequesites

* An account with [fonial.de](https://www.fonial.de/)
* API option enabled [https://www.fonial.de/hilfe/api/]()
* Customer ID
* GUID (received after API activation)
* Extension number of the device

### 3. Installation

* Get the latest release
* Unzip

##### a) Guided install

* Double-click on `_install.command`
* Answer the questions

##### b) Manual install

* Edit `fonial.scpt` (`customerId`, `guid`, `ipTarget`, `titleText`)
* Move the edited `fonial.scpt` into `~/Library/Application Scripts/com.apple.AddressBook/`
* Restart the Contacts app

### 4. Deinstallation

##### a) Guided uninstall

* Double-click on `_uninstall.command`
* Enter the extension number of the device you want to remove

##### b) Manual uninstall

* Delete the appropriate plugins from `~/Library/Application Scripts/com.apple.AddressBook/`
* Restart the Contacts app
