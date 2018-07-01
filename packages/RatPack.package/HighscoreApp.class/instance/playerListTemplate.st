as yet unclassified
playerListTemplate

	| htmlString |
	
	htmlString := self htmlBeginTemplate, self playerListCssTemplate,
	'<div class="list-group">
		<% players do: [ :player | %>
	  		<a href="/players/<%= player metadata at: #id %>/" class="list-group-item list-group-item-action"><%= player object name %></a>
		<% ]. %>
	</div>', self htmlEndTemplate.

	^ htmlString