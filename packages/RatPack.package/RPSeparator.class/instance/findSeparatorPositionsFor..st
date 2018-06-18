accessing
findSeparatorPositionsFor: aClassName

	| separatorPositions char nextChar secondNextChar|

	separatorPositions := OrderedCollection new.
	1 to: aClassName size do: [ :index | 
		char := aClassName at: index.
		(index + 2 <= aClassName size ) ifTrue: [
			nextChar := (aClassName at: (index + 1)) asCharacter.
			secondNextChar := (aClassName at: (index + 2)) asCharacter.
			((nextChar isUppercase and: [ secondNextChar isLowercase. ]) or: 
			(nextChar isUppercase and: [ secondNextChar isUppercase and: [char isLowercase ]] )) ifTrue: [
				separatorPositions add: index. ]. ]. ].
	
	^ separatorPositions