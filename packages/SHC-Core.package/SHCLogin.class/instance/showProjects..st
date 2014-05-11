as yet unclassified
showProjects: username
	| jsonResponse projectCollection |

	jsonResponse := self listProjects: username.
	projectCollection := self projectNamesAsString: jsonResponse.
	
	self clearProjectList.
	
	projectCollection do:
		[:project | self projectList contents:
			self projectList contents,
			Character cr asString,
			project]