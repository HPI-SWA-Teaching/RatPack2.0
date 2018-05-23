private-interaction
setCorrectBody: aResponse in: anEnv

	"Handler is performed on application and default return is self. So response is 'self application', if handler hadn't a return."
	((aResponse ~= self application) and: (anEnv body isEmpty))
		ifTrue: [ anEnv body: aResponse ].
		