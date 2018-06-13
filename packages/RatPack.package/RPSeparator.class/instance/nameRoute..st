routing
nameRoute: aClassName

	| separatorPositions routeName lastSeparatorPosition |

	separatorPositions := self findSeparatorPositionsFor: aClassName.
		
	routeName := ''.
	lastSeparatorPosition := 1.
	separatorPositions do: [ :position | 
		routeName := routeName, (aClassName copyFrom: lastSeparatorPosition to: position), self separator .
		lastSeparatorPosition := position + 1.].
	
	routeName := routeName, (aClassName copyFrom: lastSeparatorPosition to: aClassName size).
	
	
	^ routeName