api-calls
listUser: aUserName
	| userDictionary |
	userDictionary := self fetchUser: aUserName.
	userDictionary ifNil: [ ^nil ].
	^ SHCUser parseFromJson: userDictionary