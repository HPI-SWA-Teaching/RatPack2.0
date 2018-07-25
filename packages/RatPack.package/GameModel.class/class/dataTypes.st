as yet unclassified
dataTypes 

	"This method specifies the data types for each instance variable of the data class"
	^ Dictionary newFrom: { 
		'name' -> 'VARCHAR(50)'. 
		'password' -> 'VARCHAR(50)'.
		'description' -> 'VARCHAR(2000)'.
		'image' -> 'VARCHAR'.
	 }
	