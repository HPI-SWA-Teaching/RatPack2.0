templating
playerDetailsTemplate

	| htmlString |
	
	htmlString := self htmlBeginTemplate, self highscoreListCssTemplate, '
	<div class="page-header">
		<h1>Highscores von <%= player object name %></h1>
	</div>
	<div class="list-group">
		<% scores doWithIndex: [ :score :index | %>
			<% game := (self database) loadModelObject: (score object game) from: GameModel. %>
	  		<a href="#" class="list-group-item list-group-item-action"><b><%= game object name %> </b>: <%= score object score %> Punkte</a>
		<% ]. %>
	</div>', self htmlEndTemplate.

	^ htmlString