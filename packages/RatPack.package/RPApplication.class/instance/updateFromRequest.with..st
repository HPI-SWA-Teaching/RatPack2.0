object handling
updateFromRequest: aRouteSuffix with: anId

	| updatedObject jsonString aRPModelClass objectFromDatabase |
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	jsonString := self request rawPutContents.
	objectFromDatabase := self database loadModelObject: (anId asNumber) from: aRPModelClass.
	updatedObject := aRPModelClass updateObject: objectFromDatabase object withJson: jsonString.
	self database update: updatedObject with: anId from: aRPModelClass.
	^ self getObjectFromRequest: aRouteSuffix with: anId
