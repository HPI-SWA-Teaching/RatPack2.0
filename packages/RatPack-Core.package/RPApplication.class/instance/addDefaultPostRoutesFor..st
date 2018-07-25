model handling
addDefaultPostRoutesFor: anRPModelClass
	
	| apiUrl |

	apiUrl := self createDefaultRouteFor: anRPModelClass withPrefix: (self settings apiRoutePrefix).
	(self routesFor: #post:) add: (apiUrl -> #writeNewObjectForPost:).
	