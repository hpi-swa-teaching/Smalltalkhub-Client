as yet unclassified
initialize
	super initialize.
	
	self width: 400.
	self height: 500.
	
	projectNameLabel := TextMorph new.
	self projectNameLabel
		position: self position + (20@35).
	self addMorph: self projectNameLabel.
	
	registerProjectButton := SimpleButtonMorph new.
	self registerProjectButton
		position: self position + (20@60);
		label: '-> Metacello';
		target: self;
		actionSelector: #addProjectToMonticello.
	self addMorph: self registerProjectButton.
	
	licenseLabel := TextMorph new.
	self licenseLabel 
		position: self position + (20@90);
		contents: 'License: '.
	self addMorph: self licenseLabel.
	
	tagsLabel := TextMorph new.
	self tagsLabel 
		position: self position + (20@120);
		contents: 'Tags: '.
	self addMorph: self tagsLabel.
		
	websiteLabel := TextMorph new.
	self websiteLabel 
		position: self position + (20@150);
		contents: 'Website: '.
	self addMorph: self websiteLabel.
	
	descriptionLabel := TextMorph new.
	self descriptionLabel 
		position: self position + (20@180);
		contents: 'Description: '.
	self addMorph: descriptionLabel.
	
	contributorLabel := TextMorph new.
	self contributorLabel
		position: self position + (20@210);
		contents: 'Contributors: '.
	self addMorph: self contributorLabel.
	
	watcherLabel := TextMorph new.
	self watcherLabel
		position: self position + (20@350);
		contents: 'Watchers: '.
	self addMorph: self watcherLabel.
	
	saveButton := SimpleButtonMorph new.
	self saveButton
		position: self position + (350@460);
		label: 'save';
		target: self;
		actionSelector: #().
	self addMorph: self saveButton.
	
	self contributor: #().
	self watcher: #().
	self contributorListMorphIndex: 0.
	self watcherListMorphIndex: 0.
	
	self contributorListMorph: (PluggableListMorph 
		on: self
		list: #contributor
		selected: #contributorListMorphIndex
		changeSelected: #contributorListMorphIndex:).
	self contributorListMorph 
		position: self position + (20@240);
		width: 200;
		height: 100;
		doubleClickSelector: #contributorListClick.
	self addMorph: self contributorListMorph.
	
	self watcherListMorph: (PluggableListMorph 
		on: self
		list: #watcher
		selected: #watcherListMorphIndex
		changeSelected: #watcherListMorphIndex:).
	self watcherListMorph 
		position: self position + (20@380);
		width: 200;
		height: 100;
		doubleClickSelector: #watcherListClick.
	self addMorph: self watcherListMorph.

	self openInHand 