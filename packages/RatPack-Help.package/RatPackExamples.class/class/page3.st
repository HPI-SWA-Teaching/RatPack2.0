pages
page3
	^HelpTopic 
		title: 'Sending highscores'
		contents: 'You can send highscores directly from your SWA app using the WebClient package. Use the following code and replace player in the json with the id of the player who scored this, game with the id of the game and score with the score. These ids will be returned when an object is created or can be read from the api.
		
		body := ''{ "player": "1", "game": 3, "score": "42"}''
		url := ''http://localhost:4567/api/highscores''.
	
		client := (WebClient new) initializeFromUrl: url.
		request := client requestWithUrl: url.
		request method: ''POST''.
		request headerAt: ''Content-Type'' put: ''application/json''.
		request headerAt: ''Content-Length'' put: body size.
		request headerAt: ''Authorization'' put: ''a:12345''. 
		response := client sendRequest: request content: body readStream size: body size.'
