endpoint
writeRegisteredModelsFromGetRequestAsHtml: aRPModelname
 
      | aRPModelClass aHtmlString subStrings |
	aRPModelClass := self getRegisteredModel: aRPModelname.
	subStrings := OrderedCollection new.
	aHtmlString :=  '<b>Model:</b> ',
					aRPModelname,
					'<br><b>Metadata:</b> {"dataTypes":{',
					((aRPModelClass dataTypes associations collect: [:each |
						each asJsonString]) joinSeparatedBy: ','),
					'}}<br><br><b>Objects:</b>',
					(self writeRegisteredObjectsFromGetRequestAsHtml: aRPModelname).
	self sendHtml: aHtmlString