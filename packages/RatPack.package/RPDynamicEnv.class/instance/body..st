as yet unclassified
body: aStringOrStream
	| contents |
	self halt.
	aStringOrStream isStream ifTrue: [^ self response contents: aStringOrStream].
	contents := (aStringOrStream = self) | (aStringOrStream = nil)
					ifTrue: ['']
					ifFalse: [aStringOrStream asString].
	^ self response contents: (ReadStream on: contents).