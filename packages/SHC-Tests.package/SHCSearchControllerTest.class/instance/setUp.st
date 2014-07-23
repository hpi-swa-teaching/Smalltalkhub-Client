as yet unclassified
setUp 
	self searchinstance: SHCSearchController new.
	self searchinstance client: SHCClient new.
	
	"Check if SmalltalkHub got their search fixed. if not, the tests would fail and therefore are not executed (it is not our fault that the server is broken)"
	self sthSanity: self checkSmalltalkHubSanity