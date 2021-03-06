model handling
addDefaultApiGetRoutesFor: anRPModelClass

	| apiUrl |

	apiUrl := self createDefaultRouteFor: anRPModelClass withPrefix: (self settings apiRoutePrefix).
	(self routesFor: #get:) add: ((apiUrl, self class wildcard) -> #'writeObjectForGet:id:').
	(self routesFor: #get:) add: (apiUrl -> #'writeObjectsForGet:')
