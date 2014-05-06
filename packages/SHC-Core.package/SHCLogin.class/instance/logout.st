as yet unclassified
logout
	| response |
	response := WebClient httpGet: 'http://smalltalkhub.com/hub/logout'. 
	response isSuccess ifFalse:[^self error: response status] ifTrue:[^ true].