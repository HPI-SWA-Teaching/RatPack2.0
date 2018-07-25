object handling
writeNewObjectForPost: aRouteSuffix

	| aRPModelClass responseId |
	
	self parsedRequestContents ifNil: [^ self badRequest].
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	responseId := self persistObjectBy: self parsedRequestContents from: aRPModelClass.
	self writeObjectForGet: aRouteSuffix id: responseId.
