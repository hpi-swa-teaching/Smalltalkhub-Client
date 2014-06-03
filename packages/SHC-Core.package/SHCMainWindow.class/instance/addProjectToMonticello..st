as yet unclassified
addProjectToMonticello: aProjectName
	| integrator |
	integrator := SHCMonticelloIntegrator new.
	integrator addProject: aProjectName fromUser: (self username) withPassword: (self password).