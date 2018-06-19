object handling
writeDeletedObject: aRouteSuffix id: anID
	
	| anRPModelClass |
	anRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	self database deleteObject: anID from: anRPModelClass
	