interaction
preHook: anEnvironment
	
	| request decoder result |
	request := anEnvironment request.
	
	[
		(self shouldProcessRequest: request)
		ifTrue: [
			decoder := self getDecoderForRequest: request fromDecoders: anEnvironment settings contentDecoders.
			result := self getDecoderResultFrom: decoder forRequest: request.
			anEnvironment parsedRequestContents: result.
		]
	] on: Error do: [ :sig |
		anEnvironment parsedRequestContents: nil.
		anEnvironment settings forceCorrectContentDecoding ifTrue: [ ^ sig pass ] ifFalse: [ ^ sig return ] ].
	
	^ true