routing
parseContent: aContent type: aType

	| parser |
	parser := (self settings contentParsers) at: (aType asLowercase) ifAbsent: [^ self error: 'Parser missing!'].

	self parsedRequestContents: (parser parse: aContent).