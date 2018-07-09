as yet unclassified
tokenPayload: token

	| separatedToken |
	separatedToken := token subStrings: '.'.
	
	^ (RPJsonContentParser parse: separatedToken second base64Decoded)
											