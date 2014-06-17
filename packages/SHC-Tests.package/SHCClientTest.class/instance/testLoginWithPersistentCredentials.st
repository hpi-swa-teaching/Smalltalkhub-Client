tests
testLoginWithPersistentCredentials
	| tmpInstance |

	self clientInstance username: 'ShcTestUser'.
	self clientInstance password: 'HurfDurf'.

	tmpInstance := SHCClient new.

	self assert: (tmpInstance login).