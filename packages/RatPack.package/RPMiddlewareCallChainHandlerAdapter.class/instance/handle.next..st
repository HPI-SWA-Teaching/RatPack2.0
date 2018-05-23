handler calling
handle: anEnv next: aNext

	| arguments |
	"args needed as array by self perfom: withArguments:"
	self halt.
	arguments := (anEnv request url findTokens: '/') allButFirst asArray
			ifEmpty: [^ anEnv body: (self application perform: anEnv handler)].
		
	^ anEnv body: (self application perform: anEnv handler withArguments: arguments).