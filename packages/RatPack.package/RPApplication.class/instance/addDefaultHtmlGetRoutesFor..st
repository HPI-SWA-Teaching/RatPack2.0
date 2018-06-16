model handling
addDefaultHtmlGetRoutesFor: anRPModelClass

	| htmlUrl |

	htmlUrl := self createDefaultRouteFor: anRPModelClass withPrefix: self class htmlRoutePrefix. 
	(self routesFor: #get:) add: ((htmlUrl, self class wildcard) -> #'writeObjectFromGetRequestAsHtml:with:').
	(self routesFor: #get:) add: (htmlUrl -> #'writeRegisteredModelsFromGetRequestAsHtml:')
	