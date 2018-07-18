interaction
createSignature: aMessage withEnv: anEnv

	^ (SHA256 new hmac)
	 	key: (self secret: anEnv) asByteArray;
		digestMessage: aMessage asByteArray