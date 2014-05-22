as yet unclassified
logout
	| response |
	self projects: #().
	self changed: #projects.
	response := WebClient httpGet: 'http://smalltalkhub.com/hub/logout'. 
   ^ response isSuccess