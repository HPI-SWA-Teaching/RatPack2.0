private
getParserResultFrom: aParser forRequest: aRequest

	| content |
	
	aRequest method asLowercase asSymbol = #put
		ifTrue: [ content := aRequest rawPutContents ]
		ifFalse: [ content := aRequest rawPostContents ].
	
	^ aParser parse: content