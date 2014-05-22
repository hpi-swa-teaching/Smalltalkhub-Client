monticello
getPackage: aPackageNameString
	| packages filtered|
	packages := self McBrowser workingCopies.
	filtered := packages detect: [:package | package packageName = aPackageNameString ] ifNone: [^ nil].
	^ filtered