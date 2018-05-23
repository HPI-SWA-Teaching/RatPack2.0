object handling
deleteFromRequest: aRoute with: anId
	
	| anRPModelClass |
	anRPModelClass := self getModelForRoute: aRoute.
	self database deleteObject: anId from: anRPModelClass
	