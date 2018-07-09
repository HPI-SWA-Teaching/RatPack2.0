as yet unclassified
base64UrlEncoded: aString
	
	| processedString |
	processedString := aString base64Encoded.
	processedString := (processedString subStrings: '=') first.
	processedString := processedString copyReplaceAll: '/' with: '_'.
	processedString := processedString copyReplaceAll: '+' with: '-'.
	
	^ processedString