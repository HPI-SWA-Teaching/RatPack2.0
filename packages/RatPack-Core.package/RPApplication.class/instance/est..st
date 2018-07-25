templating
est: aString
	"Slow, because it reifies the stack, but allows access to arguments and temps"
	self flag: #ignoreForCoverage. "this causes the testError to fail"
	^ RPEmbeddedSmalltalk render: aString in: thisContext sender