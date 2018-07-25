accessing
globalMiddleware 

	^ self getValueFor: #globalMiddleware default: [ #( #RPContentParserMiddleware ) asOrderedCollection ]