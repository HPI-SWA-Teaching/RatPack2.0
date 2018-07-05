as yet unclassified
validateTokenObject: tokenObject

	| signatureToVerify hmac |
	signatureToVerify := (tokenObject at: #header) asJsonString base64Encoded , '.' , 
	(tokenObject at: #payload) asJsonString base64Encoded.
	
	hmac := HMAC new.
	hmac key: self secret.
	hmac setHash: SHA256WithPrimitive.
	^ (hmac digestMessage: signatureToVerify asByteArray) = (tokenObject at: #signature asJsonString)
	
	
	
	