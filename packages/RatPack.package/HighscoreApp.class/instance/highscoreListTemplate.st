templating
highscoreListTemplate

	| htmlString |
	
	htmlString := self htmlBeginTemplate, self highscoreListCssTemplate, '
	<div class="page-header">
		<h1>Highscores für <%= game object name %></h1>
	</div>
	<div class="list-group">
		<% scores doWithIndex: [ :score :index | %>
			<% player := self database loadModelObject: (score object player) from: SwaPlayerModel. %> 
	  		<a href="/players/<%= player metadata at: #id %>/" class="list-group-item list-group-item-action"><b>Platz <%= index %> </b>: <%= score object score %> Punkte - <%= player object name %></a>
		<% ]. %>
	</div>', self htmlEndTemplate.

	^ htmlString