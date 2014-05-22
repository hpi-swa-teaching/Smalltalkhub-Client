monticello
addLocalPackage: aPackageNameString
	(self localPackageExists: aPackageNameString) ifTrue: [^ true].
	PackageInfo registerPackageName: aPackageNameString.
	MCWorkingCopy forPackage: (MCPackage new name: aPackageNameString).
	^ true