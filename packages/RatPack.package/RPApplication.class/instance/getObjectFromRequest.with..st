object handling
getObjectFromRequest: aRoute with: anID

	| modelObject aRPModelClass |
	
	aRPModelClass := self getModelForRoute: aRoute.
	[ modelObject := self database loadModelObject: (anID asNumber) from: aRPModelClass] 
		on: Warning do: [^ self objectNotFound].
	^ self sendJson: (modelObject asJson)
