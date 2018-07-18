*RatPack
base64UrlDecoded
	
	| processedString |
	processedString := self.
	processedString := processedString copyReplaceAll: '_' with: '/'.
	processedString := processedString copyReplaceAll: '-' with: '+'.
	
	^ processedString  base64Decoded.
	