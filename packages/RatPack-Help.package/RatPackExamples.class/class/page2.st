pages
page2
	^HelpTopic 
		title: 'Adding objects'
		contents: 'You need to add your swa game to the application in order to post highscores. You can do this via RatPack Control Panel or by sending a json to the route api/games/. The json object should look like this:
			
			{
				"name": "Name of your game",
				"description": "Description of your game",
				"password": "Password for your game - could be used in AuthenticationMiddleware for example",
				"image": "Base64 encoded image of your game"
			}
			
			If you view the /games/ route now, your game should be visible. Then you can add players by making a post request to api/players/. It should contain the following values:
			
			{
				"name": "Name of the player"
			}
			
			If you view the /players/ route now, the player should be visible now.'
