object handling
updateFromRequest: aRoute with: anId
 
    | updatedObject jsonString aRPModelClass|
	aRPModelClass := self getModelForRoute: aRoute.
	jsonString := self request rawPutContents.
	updatedObject := aRPModelClass createObject: jsonString.
	self database update: updatedObject with: anId from: aRPModelClass.
	^ self getObjectFromRequest: aRPModelname with: anId
