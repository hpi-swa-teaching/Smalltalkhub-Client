as yet unclassified
initialize
	super initialize.
	
	self width: 400.
	self height: 500.
	
	projectNameLabel := TextMorph new.
	projectNameLabel 
		position: self position + (20@35).
	self addMorph: projectNameLabel.
	
	registerProjectButton := SimpleButtonMorph new.
	registerProjectButton
		position: self position + (20@60);
		label: '-> Metacello';
		target: self;
		actionSelector: #addProjectToMonticello.
	self addMorph: registerProjectButton.
	
	licenseLabel := TextMorph new.
	licenseLabel 
		position: self position + (20@90);
		contents: 'License: '.
	self addMorph: licenseLabel.
	
	tagsLabel := TextMorph new.
	tagsLabel 
		position: self position + (20@120);
		contents: 'Tags: '.
	self addMorph: tagsLabel.
		
	websiteLabel := TextMorph new.
	websiteLabel 
		position: self position + (20@150);
		contents: 'Website: '.
	self addMorph: websiteLabel.
	
	descriptionLabel := TextMorph new.
	descriptionLabel 
		position: self position + (20@180);
		contents: 'Description: '.
	self addMorph: descriptionLabel.
	
	contributorLabel := TextMorph new.
	contributorLabel
		position: self position + (20@210);
		contents: 'Contributors: '.
	self addMorph: contributorLabel.
	
	watcherLabel := TextMorph new.
	watcherLabel
		position: self position + (20@350);
		contents: 'Watchers: '.
	self addMorph: watcherLabel.
	
	saveButton := SimpleButtonMorph new.
	saveButton
		position: self position + (350@460);
		label: 'save';
		target: self;
		actionSelector: #().
	self addMorph: saveButton.
	
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