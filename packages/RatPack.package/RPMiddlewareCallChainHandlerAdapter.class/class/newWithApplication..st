as yet unclassified
newWithApplication: anApplication

	| middlewareAdapter |
	middlewareAdapter := self basicNew.
	middlewareAdapter initialize.
	middlewareAdapter application: anApplication.
	^ middlewareAdapter 