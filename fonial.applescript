--	Script to dial numbers from Contacts/AddressBook via VoIP-Provider fonial.de
--	To use copy to ~/Library/Application Scripts/com.apple.AddressBook

--	Modified/extended in 2018 by Alexander Harm
--	https://github.com/alexanderharm/fonial-mac-dialer
--	
--	This script is based on Snom.scpt by
--	David Kreitschmann, K3com Kommunikationstechnik, http://www.k3com.de
--	https://github.com/k3com/mac_dialer
--
--	This program is free software: you can redistribute it and/or modify
--	it under the terms of the GNU General Public License as published by
--	the Free Software Foundation, either version 3 of the License, or
--	(at your option) any later version.
--
--	This program is distributed in the hope that it will be useful,
--	but WITHOUT ANY WARRANTY; without even the implied warranty of
--	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--	GNU General Public License for more details.
--
--	You should have received a copy of the GNU General Public License
--	along with this program.  If not, see <http://www.gnu.org/licenses/>.

-- https://www.fonial.de/hilfe/api/click2dial/
property customerId : "123456"
property guid : "aa00bb11cc22dd33ee44ff55gg66hh77ii88jj99"
property ipTarget : "11"
property titleText : "fonial "

using terms from application "Contacts"
	on action property
		return "phone"
	end action property
	
	on action title for this_person with this_entry
		return titleText & filter(value of this_entry)
	end action title
	
	on should enable action for this_person with this_entry
		return true
	end should enable action
	
	on perform action for this_person with this_entry
		set theNumber to filter(value of this_entry)
		--display dialog theNumber
		
		do shell script "curl -s 'https://kundenkonto.fonial.de/api/2.0/call/initiate/direct?id=" & customerId & "&guid=" & guid & "&ip-target=" & ipTarget & "&number=" & theNumber & "'"
		
	end perform action
end using terms from

on filter(theNumber)
	set newNumber to ""
	repeat with c in every character of theNumber
		if "+01234567890" contains c then
			set newNumber to newNumber & c
			--display dialog newNumber
		end if
	end repeat
	return newNumber
end filter