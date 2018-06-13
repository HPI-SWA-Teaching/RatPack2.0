object handling
deleteFromRequest: aRouteSuffix with: anId
	
	| anRPModelClass |
	anRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	self database deleteObject: anId from: anRPModelClass
	