api-calls
logout
	| request response |
	request := SHCLogoutRequest withWebClient: self webclient.	
	response := request execute.
	
	"clear credentials on successful logout"
	response ifTrue: [ self username: nil; password: nil ].
	^ response