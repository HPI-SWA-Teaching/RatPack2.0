endpoint
writeObjectsForGet: aRouteSuffix
 
    | modelObjects string aRPModelClass |
	
	aRPModelClass := self getModelForRouteSuffix: aRouteSuffix.
    modelObjects := self database loadModelObjectsOf: aRPModelClass.  
	string := '{"data":[', ((modelObjects collect: [:each |
		each asJson]) joinSeparatedBy: ','), ']}'.
  	self sendJson: string

