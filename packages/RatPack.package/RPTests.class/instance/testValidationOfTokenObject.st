as yet unclassified
testValidationOfTokenObject

	| token session |
	session := RPSessionMiddleware new.
	token := 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.bgGd720CeHP4kY9mGuMEoteBq4TP4d0W2XkpiI4bVgg'.
	self assert: (session validateTokenObject: (session parseToken: token)).
	