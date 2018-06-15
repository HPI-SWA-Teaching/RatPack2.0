model handling
addDefaultHtmlGetRoutesFor: anRPModelClass

	| htmlUrl |
	htmlUrl := self class htmlRoutePrefix, (anRPModelClass name).
	(self routesFor: #get:) add: ((htmlUrl, self class wildcard) -> #writeObjectFromGetRequestAsHtml:with:).
	(self routesFor: #get:) add: (htmlUrl -> #writeRegisteredModelsFromGetRequestAsHtml:)