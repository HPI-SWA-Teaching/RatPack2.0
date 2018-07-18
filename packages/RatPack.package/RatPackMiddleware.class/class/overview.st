pages
overview
	^HelpTopic 
		title: 'Defining middleware'
		contents:
	'Middleware offers a way to reuse code that does repeating tasks in different handlers or different applications.

If you want to use middleware, you have to define your middleware in a new class. This class will have to implement the "handle: anEnvironment next: aBlock" method. This method will be called by the framework for every request that targets a handler that this middleware is registered for.

	handle: anEnvironment next: aBlock
	
	anEnvironment is the current, thread local RPEnvironment object that stores all information such as the request or the response object. Currently, this behaves like a Dictionary, so you can add, remove or edit entires as you wish. For example, an authentication middleware may add a "user" entry where information about the user sending this request can be stored. All middleware that is executed after the current middleware as well as the handler will then have this information at hand.
	
	aBlock	is a block that, if evaluated, will continue execution of the request handling. It will either call the next middleware or the handler. This leaves the power to decide whether you want to continue the handling for this request. You should either not do anything with this, or call "aBlock value" to continue. Keep in mind that you can also edit the environment after you did this.' 