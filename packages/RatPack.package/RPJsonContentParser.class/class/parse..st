as yet unclassified
parse: aJsonString

	^ Json readFrom: (ReadStream on: aJsonString)