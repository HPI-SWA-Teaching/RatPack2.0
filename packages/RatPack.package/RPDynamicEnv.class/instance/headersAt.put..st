accessing
headersAt: aKey put:	aValue
	
	"({#status. #contentType. #contentLenght. #cookies} anySatisfy: [:each | each = aKey])
		ifTrue:  [ self response perform: aKey asMutator withArguments: {aValue} asArray. ]
		ifFalse: [ self response fieldAt: aKey put: aValue. ]."

	self response fieldAt: aKey put: aValue.