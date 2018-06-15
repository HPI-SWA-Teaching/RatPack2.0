object conversion
updateObject: aRPModelClassObject withJson: aJsonString

	| newObject aJsonObject|
	
	aJsonObject := self createJsonObject: aJsonString. 
	newObject := aRPModelClassObject. 
	self dataTypes keysDo: 
		[:key | newObject instVarNamed: key put: (aJsonObject at: key 
								ifAbsent: [newObject instVarNamed: key])].
	^ newObject