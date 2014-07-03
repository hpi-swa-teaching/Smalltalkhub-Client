running
testMonticelloButton
	| project mci |

	project := SHCProject new.
	project name:'ShcTestProject0'.
	project owner: 'ShcTestUser'.	
	mci := SHCMonticelloIntegrator new.
	(mci isProjectInMonticello: project) ifTrue: [mci removeProject: project].
	
	self instance activeProject: project.
	self instance update.
	
	self assert: (self instance registerProjectButton visible).
	self assert: ((self instance mcInfoTextMorph visible) not).
	self assert: ((mci isProjectInMonticello: project) not).
	
	self instance registerProjectButton doButtonAction.
	
	self assert: ((self instance registerProjectButton visible) not).
	self assert: (self instance mcInfoTextMorph visible).
	self assert: (mci isProjectInMonticello: project).
	
	mci removeProject: project.
	