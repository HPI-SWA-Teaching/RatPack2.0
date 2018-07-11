interaction
createToken: anEnv

	| signature header payload message |
	header :=  self createHeader base64UrlEncoded.
	payload := (self createPayload: anEnv) base64UrlEncoded.
	
	message := header , '.' , payload.
	
	signature := (self createSignature: message withEnv: anEnv) base64UrlEncoded.
	
	^ message , '.' , signature