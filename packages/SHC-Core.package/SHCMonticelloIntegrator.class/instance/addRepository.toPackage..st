monticello
addRepository: aRepository toPackage: aPackageName
	| package |
	package := self getPackage: aPackageName.
	package repositoryGroup addRepository: aRepository.
	^ package