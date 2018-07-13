pages
page2
	^HelpTopic 
		title: '2. Squeak and Postgresql'
		contents: 'Setup and run Postgresql server (tested: 9.4 on windows)

	1. get package Cryptography (MD5 class is needed) http://www.squeaksource.com/Cryptography

	2. get package PostgresV2 (first imageExtensions then PostgresqlV2) http://www.squeaksource.com/PostgresV2

	3. open connection in Squaek with commands

		args := PGConnectionArgs
				hostname: ''localhost''
				portno: port
				databaseName: ''dbname''
				userName: ''username''
				password: ''password''.

		connection := PGConnection new.
		connection connectionArgs: args.
		connection startup.
		connection isConnected'