model handling
addDefaultPostRoutesFor: anRPModelClass
	
	| apiUrl |
	apiUrl := self createDefaultRouteFor: anRPModelClass withPrefix: (self class apiRoutePrefix).
	(self routesFor: #post:) add: (apiUrl -> #'postFromRequest:').
	