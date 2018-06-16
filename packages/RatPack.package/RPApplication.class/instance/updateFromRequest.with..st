object handling
updateFromRequest: aRouteSuffix with: anId
 
    | updatedObject jsonString aRPModelClass|
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	jsonString := self request rawPutContents.
	updatedObject := aRPModelClass createObject: jsonString.
	self database update: updatedObject with: anId from: aRPModelClass.
	self writeObjectFromGetRequest: aRouteSuffix with: anId

