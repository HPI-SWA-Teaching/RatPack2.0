as yet unclassified
createSignature: aMessage

	^ (SHA256 new hmac key: self secret asByteArray ; digestMessage: aMessage asByteArray )