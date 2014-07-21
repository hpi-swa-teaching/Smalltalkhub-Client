api-calls
addCurrentUserAsWatcherToProject: aProjectName fromUser: aUserName
	| request |
	request := SHCAddWatcherRequest withWebClient: self webclient.
	request username: aUserName.
	request project: aProjectName.
	^ request execute