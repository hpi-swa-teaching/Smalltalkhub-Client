as yet unclassified
listProjects: aUserName
	"returns projects of aUserName"
	| result array |
	result := self webclient httpGet: 'http://smalltalkhub.com/hub/projects/', aUserName.
	result isSuccess ifTrue: [array := WebUtils jsonDecode: (ReadStream on: result content). ^ array] ifFalse: [^ nil]