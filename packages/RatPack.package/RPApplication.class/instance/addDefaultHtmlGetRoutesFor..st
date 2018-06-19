model handling
addDefaultHtmlGetRoutesFor: anRPModelClass

	| htmlUrl |

	htmlUrl := self createDefaultRouteFor: anRPModelClass withPrefix: self class htmlRoutePrefix. 
	(self routesFor: #get:) add: ((htmlUrl, self class wildcard) -> #writeObjectAsHtmlForGet:id:).
	(self routesFor: #get:) add: (htmlUrl -> #writeObjectsAsHtmlForGet:)
	