api-calls
updateProject: aProject
	| request | 
	request := SHCProjectModificationRequest withWebClient: self webclient.
	request updatedProject: aProject.
	^ request execute.