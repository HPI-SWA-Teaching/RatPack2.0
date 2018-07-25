object conversion
createObjectFrom: aDictionary

	(self validateForCreation: aDictionary) 
		ifFalse: [self notify: 'Invalid input for creation! Could not create Object on ' , self name].
	
	^ self initializeObjectFrom: aDictionary.