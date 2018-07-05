as yet unclassified
createToken

	| signature header payload |
	header := self createHeader.
	payload := self createPayload.
	signature := self createSignature.
	
	^ header base64Encoded , '.' , payload base64Encoded , '.' , signature base64Encoded
	
	