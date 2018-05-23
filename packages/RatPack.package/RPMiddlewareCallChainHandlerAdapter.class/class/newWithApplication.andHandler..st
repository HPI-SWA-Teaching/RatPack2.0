as yet unclassified
newWithApplication: anApplication  andHandler: aHandler

	| middlewareAdapter |
	middlewareAdapter := self basicNew.
	middlewareAdapter application: anApplication.
	middlewareAdapter handler: aHandler.
	^ middlewareAdapter 