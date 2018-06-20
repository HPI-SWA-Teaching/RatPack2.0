accessing
globalMiddleware 

	^ self getValueFor: #globalMiddleware default: [ #() asOrderedCollection ]