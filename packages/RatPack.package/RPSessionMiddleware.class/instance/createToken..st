as yet unclassified
createToken: anEnv

	| signature header payload message |
	header := self base64UrlEncoded: self createHeader.
	payload := self base64UrlEncoded: (self createPayload: anEnv).
	
	message := header , '.' , payload.
	
	signature := self base64UrlEncoded: (self createSignature: message).
	
	^ message , '.' , signature