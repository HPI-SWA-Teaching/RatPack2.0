as yet unclassified
preHook: anEnvironment

	| request method |
	request := anEnvironment request.
	method := request method asLowercase asSymbol.
	
	[
		(method = #put) ifTrue: [ self decodeContent: request rawPutContents type: request contentType. ].
		(method = #post) ifTrue: [ self decodeContent: request rawPostContents type: request contentType. ].
	] on: Error do: [ :sig |
		anEnvironment parsedRequestContents: nil.
		self settings forceCorrectContentDecoding ifTrue: [ ^ sig pass ] ifFalse: [ ^ sig return ] ].