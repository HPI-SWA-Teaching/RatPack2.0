model handling
addDefaultHtmlGetRoutesFor: anRPModelClass

	| htmlUrl |
	htmlUrl := self createDefaultRouteFor: anRPModelClass withPrefix: self class htmlRoutePrefix. 
	(self routesFor: #get:) add: ((htmlUrl, self class wildcard) -> #'getObjectFromRequestAsHtml:with:').
	(self routesFor: #get:) add: (htmlUrl -> #'getRegisteredModelsFromRequestAsHtml:')