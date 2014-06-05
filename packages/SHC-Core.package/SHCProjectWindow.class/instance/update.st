as yet unclassified
update
	| projectdetails |
	
	projectdetails := self webclient listProject: (self activeProject name) from: (self activeProject owner).
	
	self licenseLabel contents: ((self licenseLabel contents) , ((self webclient parseProject: projectdetails) license)).
	
	self websiteLabel contents: ((self websiteLabel contents) , ((self webclient parseProject: projectdetails) website)).
	
	self tagsLabel contents: ((self tagsLabel contents) , ((self webclient parseProject: projectdetails) tags)).
	
	self descriptionLabel contents: ((self descriptionLabel contents) , ((self webclient parseProject: projectdetails) description)).
	
	self setLabel: self activeProject name.
	self projectNameLabel contents: self activeProject name.