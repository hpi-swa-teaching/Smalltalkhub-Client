ui-actions
addProjectToMonticello
	| integrator |
	integrator := SHCMonticelloIntegrator new.
	integrator 
		addProject: (activeProject name) owner: (activeProject owner) 
		withUser: (self client username) withPassword: (self client password).
	self updateMonticelloUi