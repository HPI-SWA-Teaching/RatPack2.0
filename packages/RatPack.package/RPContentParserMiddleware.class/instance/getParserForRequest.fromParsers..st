private
getParserForRequest: aRequest fromParsers: aParserCollection

	^ aParserCollection at: (aRequest contentType asLowercase) ifAbsent: [^ self error: 'Parser missing']