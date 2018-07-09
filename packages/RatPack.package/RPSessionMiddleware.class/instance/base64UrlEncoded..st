as yet unclassified
base64UrlEncoded: aString
	
	| processedString |
	processedString := (aString subStrings: '=') first.
	processedString copyReplaceAll: '/' with: '_'.
	processedString copyReplaceAll: '+' with: '-'.
	
	^ processedString