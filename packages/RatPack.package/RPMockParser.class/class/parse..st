as yet unclassified
parse: anEncodedObject

	anEncodedObject = 'invalid'
		ifTrue: [^ self error: 'Invalid content']
		ifFalse: [^ self fixedAnswer].