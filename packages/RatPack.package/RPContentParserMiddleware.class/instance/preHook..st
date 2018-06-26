interaction
preHook: anEnvironment
	
	| request parser |
	request := anEnvironment request.
	
	[
		(self shouldProcessRequest: request)
		ifTrue: [
			parser := self getParserForRequest: request fromParsers: anEnvironment settings contentParsers.
			anEnvironment parsedRequestContents: (parser parse: request rawRequestContents).
		]
	] on: Error do: [ :sig |
		anEnvironment parsedRequestContents: nil.
		anEnvironment settings forceCorrectContentDecoding ifTrue: [ ^ sig pass ] ifFalse: [ ^ sig return ] ].
	
	^ true