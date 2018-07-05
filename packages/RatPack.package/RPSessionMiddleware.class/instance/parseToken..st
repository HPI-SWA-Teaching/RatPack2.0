as yet unclassified
parseToken: token

	| separatedToken |
	separatedToken := token subStrings: '.'.
	
	^ Dictionary newFrom: { #header -> (RPJsonContentParser parse: separatedToken first base64Decoded). 
							   #payload -> (RPJsonContentParser parse: separatedToken second base64Decoded). 
							   #signature -> (separatedToken third) base64Decoded }
											