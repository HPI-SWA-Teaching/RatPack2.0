private-interaction
setBodyIfAppropiate: aBodyContent in: anEnv

	"Since the handler is a method of the application, it will return the application if it has no explicit return statement"
	anEnv body: (ReadStream on: anEnv body). 
	((aBodyContent ~= self application) and: [ anEnv body isEmpty. ])
		ifTrue: [ anEnv body: (ReadStream on: aBodyContent). ].
		