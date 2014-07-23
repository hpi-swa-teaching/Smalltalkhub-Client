as yet unclassified
checkSmalltalkHubSanity
	| searchRequest |
	"checks whether Smalltalkhub got their search function bugs fixed"
	"(deleted team without deleting its projects --> all search results that match these project names result in an 500-server error)"
	searchRequest := SHCSearchProjectsRequest withWebClient: (WebClient new).
	searchRequest  searchTerm: 'Shc'. "Project without team is named ShcTestProject2"
	^ searchRequest execute
	

	
	
	