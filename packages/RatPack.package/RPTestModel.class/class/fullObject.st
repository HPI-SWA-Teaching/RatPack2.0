helper function
fullObject
	
	^ Json readFrom: (ReadStream on: self fullJson)