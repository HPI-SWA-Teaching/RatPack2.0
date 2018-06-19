object handling
writeRemovedObjectForDelete: aRouteSuffix id: anID
	
	| anRPModelClass |
	anRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	self database deleteObject: anID from: anRPModelClass
	