as yet unclassified
mainListClick
	| project index |
	"opens the project window for the selected project"

	index := self mainListMorphIndex.
	(index = 0) ifTrue: [^ nil].
	
	project := self projects at: (index).
	SHCProjectWindow newWith: (self webclient) and: project.