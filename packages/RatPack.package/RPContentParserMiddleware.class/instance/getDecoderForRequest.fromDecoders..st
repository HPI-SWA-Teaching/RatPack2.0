private
getDecoderForRequest: aRequest fromDecoders: aDecoderCollection

	^ aDecoderCollection at: (aRequest contentType asLowercase) ifAbsent: [^ self error: 'Decoder missing']