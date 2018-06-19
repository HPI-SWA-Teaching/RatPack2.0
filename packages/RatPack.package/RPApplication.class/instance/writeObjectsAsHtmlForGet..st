endpoint
writeObjectsAsHtmlForGet: aRPModelname
 
      | objectString objects |
	objectString := ''.
      objects := self database loadModelObjectsOf: (self getRegisteredModel: aRPModelname).
      self body: (objects collect: [:each |
               '<br>ID: <a href="/html/', (aRPModelname), '/', (each metadata at: #id), '">',  (each metadata at: #id), '</a>']) join
