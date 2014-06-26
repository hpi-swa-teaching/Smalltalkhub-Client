as yet unclassified
addProjectToMonticello
	| integrator |
	integrator := SHCMonticelloIntegrator new.
	integrator addProject: (activeProject name) owner: (activeProject owner) withUser: (self username) withPassword: (self password).