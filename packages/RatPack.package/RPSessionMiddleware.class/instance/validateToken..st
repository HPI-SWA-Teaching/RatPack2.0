as yet unclassified
validateToken: token

	| separatedToken expectedSignature  |
	separatedToken := token subStrings: '.'.
	
	expectedSignature := self base64UrlEncoded: (self createSignature:  (separatedToken first , '.' , separatedToken second)).

	^  expectedSignature = separatedToken third
	
	
	
	