pages
page2
	
	^HelpTopic
		title: '2. Setting up a Model'
		contents: 
'Setting up a Model
		
	1. Create a data class with instance variables e.g.

		Object subclass #RPExampleDataClass
		instanceVariableNames: ''title content''
		
	The instance variables are the Attributes for the REST Framework
	
	2. Create model class (subclass of RPModel). It needs the following class methods:

		- dataTypes - returns dictionary with data types for instance variables of the data class (these are the attributes of the model)
		- defaultValues - returns default values for attributes
		- refClass - returns the data class
		- tableName - returns the name of the table where the data is stored
		
	3. Register the model class (not the data class) at your RPApplication subclass:
	
		app registerModel: ModelClass.
		
	->the model needs an existing class with instance variables named like the attributes for the model
	->warnings:
		-model with same name already registered
		-model is invalid
		(hint:  Attributes are just the pure attribute names as String)
	
	When in RPControlPanel:

		- Ctrl-n to add a model.
		- Ctrl-d to remove a model.
		
	      !' 
