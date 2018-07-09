as yet unclassified
validateToken: token

	| separatedToken expectedSignature  |
	separatedToken := token subStrings: '.'.
	
	expectedSignature := self createSignature:  (separatedToken first , '.' , separatedToken second ).

	^  expectedSignature = separatedToken third
	
	
	
	