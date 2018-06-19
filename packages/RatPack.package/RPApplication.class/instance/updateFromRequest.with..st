object handling
updateFromRequest: aRouteSuffix with: anId

	| aRPModelClass object |
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	object := self database loadModelObject: (anId asNumber) from: aRPModelClass.
	object := aRPModelClass updateObject: object object withJson: self request rawPutContents.
	self database update: object with: anId from: aRPModelClass.
	^ self getObjectFromRequest: aRouteSuffix with: anId
