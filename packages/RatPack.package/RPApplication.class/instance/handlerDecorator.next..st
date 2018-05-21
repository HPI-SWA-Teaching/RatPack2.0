routing
handlerDecorator: anEnv next: aNext

	| arguments |
	"args needed as array by self perfom: withArguments:"
	self halt.
	arguments := (anEnv request url findTokens: '/') allButFirst asArray
			ifEmpty: [^ self perform: aNext value].

	^ self perform: aNext value withArguments: arguments