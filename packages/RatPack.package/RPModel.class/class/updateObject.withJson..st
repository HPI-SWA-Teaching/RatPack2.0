object conversion
updateObject: aRPModelClassObject withJson: aJsonString

	| aJsonObject|
	aJsonObject := self createUpdateObject: aJsonString. 
	aJsonObject keys do: 
		[:key | aRPModelClassObject instVarNamed: key put: (aJsonObject at: key). ].
	^ aRPModelClassObject