object handling
writeObjectForGet: aRouteSuffix id: anID

	| modelObject aRPModelClass |
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
	[ modelObject := self database loadModelObject: (anID asNumber) from: aRPModelClass ] 
		on: Warning do: [^ self objectNotFound].
	self sendJson: (modelObject asJson)

