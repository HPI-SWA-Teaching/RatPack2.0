endpoint
getRegisteredModelsFromRequestAsHtml: aRoute
 
      | aRPModelClass aHtmlString subStrings |
	aRPModelClass := self getModelForRoute: aRoute.
	subStrings := OrderedCollection new.
	aHtmlString :=  '<b>Model:</b> ',
					aRPModelClass name,
					'<br><b>Metadata:</b> {"dataTypes":{',
					((aRPModelClass dataTypes associations collect: [:each |
						each asJsonString]) joinSeparatedBy: ','),
					'}}<br><br><b>Objects:</b>',
					(self getRegisteredObjectsFromRequestAsHtml: aRoute).
	^ self sendHtml: aHtmlString