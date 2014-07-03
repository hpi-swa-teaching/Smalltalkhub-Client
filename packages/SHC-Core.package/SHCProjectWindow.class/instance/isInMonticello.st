ui-actions
isInMonticello
	| mcintegrator |
	mcintegrator := SHCMonticelloIntegrator new.
	^ mcintegrator isProjectInMonticello: (self activeProject)