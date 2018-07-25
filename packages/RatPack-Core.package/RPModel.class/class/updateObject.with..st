object conversion
updateObject: aRPModelClassObject with: anObject 

	(self validateUpdateObject: anObject)
		ifFalse: [self notify: 'Invalid Json! Could not create Object on ' , self name].
	anObject keys
		do: [:key | aRPModelClassObject instVarNamed: key put: (anObject at: key)].
	^ aRPModelClassObject