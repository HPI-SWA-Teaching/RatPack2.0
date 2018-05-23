accessing
body: aStringOrStream

	(aStringOrStream isString not and: aStringOrStream isStream not)
		ifTrue: [self error: 'Return of handler must be string or stream'].
	aStringOrStream isStream ifTrue: [ self response contents: aStringOrStream].
	aStringOrStream isString ifTrue: [ self response contents: (ReadStream on: aStringOrStream).]