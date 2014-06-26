monticello
buildHttpString: aProjectNameString withUser: aUserNameString 
	| string |
	string := 'http://smalltalkhub.com/mc/',aUserNameString,'/',aProjectNameString,'/main'.
	^ string 
	
	