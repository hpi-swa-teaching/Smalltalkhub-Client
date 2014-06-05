as yet unclassified
addProjectToMonticello
	| integrator |
	integrator := SHCMonticelloIntegrator new.
	integrator addProject: activeProject fromUser: (self username) withPassword: (self password).