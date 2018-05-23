endpoint
getRegisteredObjectsFromRequest: aRoute
 
      | modelObjects string aRPModelClass |
	
	aRPModelClass := self getModelForRoute: aRoute.
      modelObjects := self database loadModelObjectsOf: aRPModelClass.  
	string := '{"data":[', ((modelObjects collect: [:each |
		each asJson]) joinSeparatedBy: ','), ']}'.
  	^ self sendJson: string