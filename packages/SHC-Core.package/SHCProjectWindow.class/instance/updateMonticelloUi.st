as yet unclassified
updateMonticelloUi
	(self isInMonticello) 
		ifTrue: [ self registerProjectButton hide. self mcInfoTextMorph show]
		ifFalse:[ self registerProjectButton show. self mcInfoTextMorph hide]