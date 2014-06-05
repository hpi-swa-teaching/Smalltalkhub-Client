as yet unclassified
showProjects: username
	"saves the projects locally and displays them"
	| projectCollection |

	self projectInformation: (self webclient listProjects: username).
	projectCollection := self webclient projectNamesAsString: self projectInformation.
	
	self projects: projectCollection.
	self mainListMorphIndex: 0.
	self changed: #projectListMorphIndex.
	self changed: #projects.