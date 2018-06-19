object handling
writeObjectForPut: aRouteSuffix id: anID
 
    | updatedObject jsonString aRPModelClass|
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	jsonString := self request rawPutContents.
	updatedObject := aRPModelClass createObject: jsonString.
	self database update: updatedObject with: anID from: aRPModelClass.
	self writeObjectForGet: aRouteSuffix id: anID

