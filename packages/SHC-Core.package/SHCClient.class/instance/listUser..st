api-calls
listUser: aUserName
	| userDictionary |
	userDictionary := self fetchUser: aUserName.
	userDictionary ifNil: [ ^nil ].
	^ self SHCUser parseFromJson: userDictionary