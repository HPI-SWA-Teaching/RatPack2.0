object handling
postFromRequest: aRoute

	| jsonString aRPModelClass responseId |
	aRPModelClass := self getModelForRoute: aRoute.
	jsonString := self request rawPostContents.
	responseId := self persistObjectBy: jsonString from: aRPModelClass.
	^ self getObjectFromRequest: aRoute with: responseId.
