private
setValue: aValue for: aKey requireServerStopped: aBoolean

	aBoolean ifTrue: [ serverRunning ifTrue: [ ^self error: 'You can not change setting ', aKey, ' while the server is running.' ] ].

	values at: aKey put: aValue.