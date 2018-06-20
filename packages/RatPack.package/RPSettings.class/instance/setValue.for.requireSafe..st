private
setValue: aValue for: aKey requireSafe: aBoolean

	aBoolean ifTrue: [ serverRunning ifTrue: [ ^self error: 'You can not change setting ', aKey, ' while the server is running.' ] ].

	values at: aKey put: aValue.