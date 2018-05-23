as yet unclassified
newWithApplication: anApplication

	| middlewareAdapter |
	middlewareAdapter := self basicNew.
	middlewareAdapter application: anApplication.
	^ middlewareAdapter 