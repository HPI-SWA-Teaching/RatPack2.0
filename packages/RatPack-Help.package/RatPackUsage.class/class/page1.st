pages
page1
	^HelpTopic 
		title: '1. Setting up an Application'
		contents: 'RatPack was made to build web applications.

To create a new application, simply subclass RPApplication.

To start an app in the workspace, you have to instantiate it, set it''s port and then start it:

	app := RPExampleApplication new.
		app name: ''Example name''.
		app portNumber: 4567.
		app start.

To stop a running app in the workspace, call

	app stop.
	
When using RPControlPanel (start by executing ''RPControlPanel new openInWorld''), you can use:

	- Ctrl-a to add a new application (creates an instance, sets the port and starts it)
	- Ctrl-x to remove an application (deletes the instance)
	- Ctrl-r to remove all applications
	- right-click on an application to see all available actions'