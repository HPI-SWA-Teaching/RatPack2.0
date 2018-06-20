private
getDecoderResultFrom: aDecoder forRequest: aRequest

	| content |
	
	aRequest method asLowercase asSymbol = #put
		ifTrue: [ content := aRequest rawPutContents ]
		ifFalse: [ content := aRequest rawPostContents ].
	
	^ aDecoder decode: content