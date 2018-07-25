pages
page2
	
	^HelpTopic
		title: '2. Setting up a Model'
		contents: 
'RatPack''s database backends provide object relational mapping. To use this, you want to set up a model. The steps to do this are:
		
1. Create a data class whose instance variables represent the fields of the model e.g.

	Object subclass #Person
	instanceVariableNames: ''name birthday''

2. Create model class (subclass of RPModel). It needs the following class methods:
	- dataTypes - returns a dictionary with the data types of the instance variables of the data class (these are the attributes of the model)
	- defaultValues - returns the default attribute values for new objects
	- refClass - returns the data class
	- tableName - returns the name of the table where the data is stored
	
3. Register the model class (not the data class) in your application:

	application registerModel: ModelClass.
	
You may get the following warnings:
	- model with same name already registered
	- model is invalid
	(hint:  Attributes are just the pure attribute names as String)

When in RPControlPanel:
	- Ctrl-n to add a model.
	- Ctrl-d to remove a model.
' 
