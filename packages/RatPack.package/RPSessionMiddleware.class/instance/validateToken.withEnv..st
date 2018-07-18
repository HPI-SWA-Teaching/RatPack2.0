interaction
validateToken: token withEnv: anEnv

	| separatedToken expectedSignature  |
	separatedToken := token subStrings: '.'.

	expectedSignature := (self createSignature:  (separatedToken first , '.' , separatedToken second) withEnv: anEnv ) base64UrlEncoded.

	^  expectedSignature = separatedToken third
	
	
	
	