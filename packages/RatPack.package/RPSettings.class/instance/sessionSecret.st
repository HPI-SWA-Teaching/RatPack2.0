accessing
sessionSecret

	^ self getValueFor: #sessionSecret ifAbsent: [ self error: 'Session secret is not set!'. ]