object handling
writeObjectForPut: aRouteSuffix id: anID
 
    | aRPModelClass object |
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	object := self database loadModelObject: (anID asNumber) from: aRPModelClass.
	self parsedRequestContents ifNil: [^ self badRequest].
	object := aRPModelClass updateObject: object object with: self parsedRequestContents.
	self database update: object with: anID from: aRPModelClass.
	self writeObjectForGet: aRouteSuffix id: anID.