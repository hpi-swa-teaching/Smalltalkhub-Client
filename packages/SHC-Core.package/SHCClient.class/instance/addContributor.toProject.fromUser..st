api-calls
addContributor: aContributorName toProject: aProjectName fromUser: aUserName
	| request |
	request := SHCAddContributorRequest withWebClient: self webclient.
	request username: aUserName.
	request project: aProjectName.
	request contributor: aContributorName.
	^ request execute