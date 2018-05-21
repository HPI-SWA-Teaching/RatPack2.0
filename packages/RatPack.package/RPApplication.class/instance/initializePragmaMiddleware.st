initialize-release
initializePragmaMiddleware

	| pragmas |
	pragmas := (Pragma allNamed: #middleware: from: self class to: RPApplication).
	pragmas do: [:pragma | self storeMiddleware: (pragma argumentAt: 1) for: pragma selector.].
	self addDefaultMiddlewareToHandlersWithoutPragmas.