pages
page1
	^HelpTopic 
		title: 'RPMiddleware'
		contents:	
	'RPMiddleware
	
	Since this approach is a bit clumsy, we offer a "RPMiddleware" class for convenience. This class implements a "handle:next:" method and leaves it to you do add code before and after the call chain is continued. To do this, you can override two methods:

		preHook: anEnvironment
		
	"anEnvironment"
	is the same environment as in "handle:next:" This method will be executed before the execution chain is continued. It should do all preprocessing. This method should return "true" or "false". If it returns "true", the request handling will be continued and the postHook: method will be called afterwards. If it returns false, the request handling will stop and "postHook:" will not be called. In this case, it makes sense for you to set all required fields in the response object in "anEnvironment" such as the status code and the response body.
	
		postHook: anEnvironment

	"anEnvironment" 
	is the same environment as in "handle:next:" This method will be executed after all execution that comes after this middleware was done. It should do all postprocessing. The return value of this method is ignored.
	
	"blacklist"
	"RPMiddleware" offers a class method called "blacklist". This method returns a collection of regular expressions. If the request''s URL matches any of these, the "preHook" and "postHook" will not be called. Instead, the execution will instantly be continued at the next element in the processing chain.' 