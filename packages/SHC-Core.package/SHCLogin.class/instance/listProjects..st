as yet unclassified
listProjects: aUserName
	| result array |
	result := self webclient httpGet: 'http://smalltalkhub.com/hub/projects/', aUserName.
	result isSuccess ifTrue: [array := WebUtils jsonDecode: (ReadStream on: result). ^ array] ifFalse: [^ nil]