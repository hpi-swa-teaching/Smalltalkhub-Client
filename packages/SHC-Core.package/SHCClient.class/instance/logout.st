as yet unclassified
logout
	| response |
	self clearProjectList.
	response := WebClient httpGet: 'http://smalltalkhub.com/hub/logout'. 
   ^ response isSuccess