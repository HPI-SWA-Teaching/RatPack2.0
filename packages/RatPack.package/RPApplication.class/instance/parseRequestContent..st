private
parseRequestContent: aHttpRequest

	| method |
	method := aHttpRequest method asLowercase asSymbol.
	
	[
		(method = #put) ifTrue: [ self parseContent: aHttpRequest rawPutContents type: aHttpRequest contentType. ].
		(method = #post) ifTrue: [ self parseContent: aHttpRequest rawPostContents type: aHttpRequest contentType. ].
	] on: Error do: [ :sig |
		self parsedRequestContents: nil.
		self settings forceCorrectContentDecoding ifTrue: [ ^ sig pass ] ifFalse: [ ^ sig return ] ].