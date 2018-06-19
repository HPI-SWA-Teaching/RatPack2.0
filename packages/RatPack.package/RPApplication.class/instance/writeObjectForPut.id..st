object handling
writeObjectForPut: aRouteSuffix id: anID
 
    | aRPModelClass object |
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	object := self database loadModelObject: (anID asNumber) from: aRPModelClass.
	object := aRPModelClass updateObject: object object withJson: self request rawPutContents.
	self database update: object with: anID from: aRPModelClass.
	self writeObjectForGet: aRouteSuffix id: anID