as yet unclassified
gameListTemplate

	| htmlString |
	
	htmlString := self htmlBeginTemplate, self gameListCssTemplate,
	'<% games do: [ :game | %>
  		<div class="card game-card" >
			<img class=card-img-top" src="data:image/png;base64, <%= game object image %>" style="object-fit: cover;height: 20rem;"/>
	  		<div class="card-body">
	    		<h5 class="card-title"><%= game object name %></h5>
	    		<p class="card-text"><%= game object description %></p>	
				<a href="/highscores/<%= game metadata at: #id %>/" class="btn btn-primary">Highscores</a>		
			</div>
		</div>
	<% ]. %>', self htmlEndTemplate.

	^ htmlString