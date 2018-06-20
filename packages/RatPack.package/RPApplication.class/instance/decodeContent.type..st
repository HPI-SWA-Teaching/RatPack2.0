routing
decodeContent: aContent type: aType

	| decoder |
	decoder := (self settings contentDecoders) at: (aType asLowercase) ifAbsent: [^ self error: 'Decoder missing'].

	self parsedRequestContents: (decoder decode: aContent).