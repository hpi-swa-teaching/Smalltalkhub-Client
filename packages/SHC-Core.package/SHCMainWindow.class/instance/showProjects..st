ui-actions
showProjects: username
	"saves the projects locally and displays them"
	| projectCollection |

	self projectDetails: (self client listProjects: username).
	projectCollection := self client projectNamesAsString: self projectDetails.
	
	self projectNames: projectCollection.
	self mainListMorphIndex: 0.
	self changed: #mainListMorphIndex.
	self changed: #projectNames.