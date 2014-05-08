as yet unclassified
logout
	| response |
	response := WebClient httpGet: 'http://smalltalkhub.com/hub/logout'. 
	response isSuccess ifFalse:[^ false] ifTrue:[^ true].