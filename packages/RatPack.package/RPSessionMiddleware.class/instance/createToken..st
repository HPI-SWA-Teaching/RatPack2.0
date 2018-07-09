as yet unclassified
createToken: anEnv

	| signature header payload message |
	header := self createHeader base64Encoded.
	header := self base64UrlEncoded: header.
	payload := (self createPayload: anEnv) base64Encoded.
	payload:= self base64UrlEncoded: payload.
	message := header , '.' , payload.
	signature := self createSignature: message.
	
	
	^ message , '.' , signature 
	
	