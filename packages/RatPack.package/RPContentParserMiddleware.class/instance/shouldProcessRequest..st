private
shouldProcessRequest: aRequest

	| method |

	method := aRequest method asLowercase asSymbol.
	
	(method = #put) ifTrue: [ ^ true ].
	(method = #post) ifTrue: [ ^ true ].
	
	^ false.