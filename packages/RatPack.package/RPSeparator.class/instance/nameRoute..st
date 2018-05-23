as yet unclassified
nameRoute: aClassName

	| char separatorPositions nextChar secondNextChar routeName lastSeparatorPosition |

	separatorPositions := OrderedCollection new.
	1 to: aClassName size do: [ :index | 
		char := aClassName at: index.
		(index + 2 <= aClassName size ) ifTrue: [
			nextChar := (aClassName at: (index + 1)) asCharacter.
			secondNextChar := (aClassName at: (index + 2)) asCharacter.
			((nextChar isUppercase and: [ secondNextChar isLowercase. ]) or: 
			(nextChar isUppercase and: [ secondNextChar isUppercase and: [char isLowercase ]] )) ifTrue: [
				separatorPositions add: index. ]. ]. ].
		
	routeName := ''.
	lastSeparatorPosition := 1.
	separatorPositions do: [ :position | 
		routeName := routeName, (aClassName copyFrom: lastSeparatorPosition to: position), self separator .
		lastSeparatorPosition := position + 1.].
	
	routeName := routeName, (aClassName copyFrom: lastSeparatorPosition to: aClassName size).
	
	
	^ routeName