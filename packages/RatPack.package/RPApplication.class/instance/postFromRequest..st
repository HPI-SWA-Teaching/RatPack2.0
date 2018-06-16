object handling
postFromRequest: aRouteSuffix

	| jsonString aRPModelClass responseId |
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	jsonString := self request rawPostContents.
	responseId := self persistObjectBy: jsonString from: aRPModelClass.
	self writeObjectFromGetRequest: aRouteSuffix with: responseId.
