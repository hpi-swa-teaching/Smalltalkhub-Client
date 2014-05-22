monticello
createHttpRepository: aUrlString withUser: aUserNameString andPassword: aPasswordString
	| repo |
	repo := MCHttpRepository new.
	repo location: aUrlString.
	repo user: aUserNameString.
	repo password: aPasswordString.
	^ repo