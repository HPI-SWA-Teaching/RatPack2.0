interaction
preHook: anEnvironment
	
	| request parser result |
	request := anEnvironment request.
	
	[
		(self shouldProcessRequest: request)
		ifTrue: [
			parser := self getParserForRequest: request fromParsers: anEnvironment settings contentParsers.
			result := self getParserResultFrom: parser forRequest: request.
			anEnvironment parsedRequestContents: result.
		]
	] on: Error do: [ :sig |
		anEnvironment parsedRequestContents: nil.
		anEnvironment settings forceCorrectContentDecoding ifTrue: [ ^ sig pass ] ifFalse: [ ^ sig return ] ].
	
	^ true