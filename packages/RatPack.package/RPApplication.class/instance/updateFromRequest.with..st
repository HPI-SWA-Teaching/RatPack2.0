object handling
updateFromRequest: aRPModelname with: anId
 
	| updatedObject jsonString aRPModelClass objectFromDatabase |
	
	aRPModelClass := self getRegisteredModel: aRPModelname.
	jsonString := self request rawPutContents.
	objectFromDatabase := self database loadModelObject: (anId asNumber) from: aRPModelClass.
	updatedObject := aRPModelClass updateObject: objectFromDatabase object withJson: jsonString.
	self database update: updatedObject with: anId from: aRPModelClass.
	^ self getObjectFromRequest: aRPModelname with: anId
