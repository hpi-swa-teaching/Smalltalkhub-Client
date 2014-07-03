as yet unclassified
isInMonticello
	| mcintegrator |
	mcintegrator := SHCMonticelloIntegrator new.
	^ mcintegrator isProjectInMonticello: (self activeProject)