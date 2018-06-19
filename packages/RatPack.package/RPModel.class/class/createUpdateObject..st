object conversion
createUpdateObject: aJsonString

	(self validateUpdateJson: aJsonString) 
		ifFalse: [self notify: 'Invalid Json! Could not create Object on ' , self name].
	
	^ Json readFrom: (ReadStream on: aJsonString from: 1 to: (aJsonString size))