initialization
newWithApplication: anApplication

	| middlewareAdapter |
	middlewareAdapter := self new.
	middlewareAdapter application: anApplication.
	^ middlewareAdapter 