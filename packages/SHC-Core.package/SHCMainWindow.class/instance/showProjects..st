as yet unclassified
showProjects: username
	"saves the projects locally and displays them"
	| jsonResponse projectCollection |

	jsonResponse := self listProjects: username.
	projectCollection := self projectNamesAsString: jsonResponse.
	
	self projects: projectCollection.
	self projectListMorphIndex: 0.
	self changed: #projectListMorphIndex.
	self changed: #projects.