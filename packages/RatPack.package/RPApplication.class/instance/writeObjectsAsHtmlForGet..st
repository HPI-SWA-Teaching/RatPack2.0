endpoint
writeObjectsAsHtmlForGet: aRPModelname
 
      | aRPModelClass aHtmlString subStrings |
	aRPModelClass := self getRegisteredModel: aRPModelname.
	subStrings := OrderedCollection new.
	aHtmlString :=  '<b>Model:</b> ',
					aRPModelname,
					'<br><b>Metadata:</b> {"dataTypes":{',
					((aRPModelClass dataTypes associations collect: [:each |
						each asJsonString]) joinSeparatedBy: ','),
					'}}<br><br><b>Objects:</b>',
					(self getObjectsAsHtml: aRPModelname).
	self sendHtml: aHtmlString