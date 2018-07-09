as yet unclassified
createSignature: aMessage

	^ self base64UrlEncoded: (SHA256 new hmac key: self secret asByteArray ; digestMessage: aMessage asByteArray ) base64Encoded 