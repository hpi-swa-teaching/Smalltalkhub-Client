as yet unclassified
showProjects: username
	"saves the projects locally and displays them"
	| projectCollection |

	self projectDetails: (self webclient parseProjects: (self webclient listProjects: username)).
	projectCollection := self webclient projectNamesAsString: self projectDetails.
	
	self projectNames: projectCollection.
	self mainListMorphIndex: 0.
	self changed: #projectListMorphIndex.
	self changed: #projectNames.