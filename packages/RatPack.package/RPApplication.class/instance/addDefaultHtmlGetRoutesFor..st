model handling
addDefaultHtmlGetRoutesFor: anRPModelClass

	| htmlUrl |

	htmlUrl := self createDefaultRouteFor: anRPModelClass withPrefix: self settings htmlRoutePrefix. 
	(self routesFor: #get:) add: ((htmlUrl, self class wildcard) -> #writeObjectAsHtmlForGet:id:).
	(self routesFor: #get:) add: (htmlUrl -> #writeObjectsAsHtmlForGet:)
	