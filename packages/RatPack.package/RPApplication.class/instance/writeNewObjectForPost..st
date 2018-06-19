object handling
writeNewObjectForPost: aRouteSuffix

	| jsonString aRPModelClass responseId |
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	jsonString := self request rawPostContents.
	responseId := self persistObjectBy: jsonString from: aRPModelClass.
	self writeObjectForGet: aRouteSuffix id: responseId.
