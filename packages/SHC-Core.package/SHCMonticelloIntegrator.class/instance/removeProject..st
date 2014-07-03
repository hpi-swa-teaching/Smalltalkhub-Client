monticello
removeProject: aShcProject
	| package |
	package := self getPackage: aShcProject name.
	(package isNil) ifTrue: [^ nil].
	package unregister.