endpoint
getRegisteredObjectsFromRequestAsHtml: aRoute
 
      | objectString objects |
	objectString := ''.
      objects := self database loadModelObjectsOf: (self getModelForRoute: aRoute).
      ^ (objects collect: [:each |
               '<br>ID: <a href="/html/', (aRoute), '/', (each metadata at: #id), '">',  (each metadata at: #id), '</a>']) join
