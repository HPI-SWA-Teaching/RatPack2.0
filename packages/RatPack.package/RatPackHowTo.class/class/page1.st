pages
page1
	^HelpTopic 
		title: '1. Setting up an Application'
		contents: 'Setting up an Application
		
	An application needs to be a subclass of RPApplication.

	To start an app in workspace:

		app := RPExampleApplication new.
		app name: ''Example name''.
		app portNumber: 4567.
		app start.

	To stop an app in workspace:

		app stop.
	

	When using RPControlPanel (start via RPControlPanel new openInWorld):

		- Ctrl-a to add a new application (has to be a subclass of RPApplication)
		- Ctrl-x to remove an application
		- Ctrl-r to remove all applications
		- right-click on an application to see all available actions'