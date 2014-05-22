monticello
localPackageExists: aPackageNameString
	(self getPackage: aPackageNameString) ifNotNil: [^ true].
	^ false