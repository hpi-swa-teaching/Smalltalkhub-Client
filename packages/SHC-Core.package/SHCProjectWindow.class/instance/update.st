as yet unclassified
update
	| projectdetails |
	
	projectdetails := self webclient listProject: (self activeProject name) from: (self activeProject owner).
	
	self licenseLabel contents: ((self licenseLabel contents) , ((self webclient parseProject: projectdetails) license)).
	
	self setLabel: self activeProject name.
	self projectNameLabel contents: self activeProject name.