handler calling
handle: anEnv next: aNext

	| arguments response |
	"args needed as array by self perfom: withArguments:"

	arguments := (anEnv request url findTokens: '/') allButFirst asArray.
	arguments
		ifEmpty: [ response := (self application perform: anEnv handler). ]
		ifNotEmpty: [ response := (self application perform: anEnv handler withArguments: arguments). ] .
	self setCorrectBody: response in: anEnv.