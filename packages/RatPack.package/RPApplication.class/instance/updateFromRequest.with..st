object handling
updateFromRequest: aRouteSuffix with: anId

	| updatedObject aRPModelClass objectFromDatabase |
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	objectFromDatabase := (self database loadModelObject: (anId asNumber) from: aRPModelClass ) object.
	updatedObject := aRPModelClass getUpdatedObject: objectFromDatabase withJson: self request rawPutContents.
	self database update: updatedObject with: anId from: aRPModelClass.
	^ self getObjectFromRequest: aRouteSuffix with: anId
