accessing
middleware
	
	^ middleware ifNil: [middleware := Dictionary new.]
