object conversion
getUpdatedObject: aRPModelClassObject withJson: aJsonString

	| newObject aJsonObject|
	
	aJsonObject := self createUpdateObject: aJsonString. 
	newObject := aRPModelClassObject copy.  
	aJsonObject keys do: 
		[:key | newObject instVarNamed: key put: (aJsonObject at: key). ].
	^ newObject