as yet unclassified
initialize
	super initialize.
	
	self width: 400.
	self height: 480.
	
	projectNameLabel := TextMorph new.
	self projectNameLabel
		contents: 'ProjectNameDummyContent';
		fontName: #ComicBold size: 24;
		position: self position + (10@30).
	self addMorph: self projectNameLabel.
	
	registerProjectButton := SimpleButtonMorph new.
	self registerProjectButton
		position: self position + (10@60);
		label: '-> Metacello';
		target: self;
		actionSelector: #addProjectToMonticello;
		color: Color veryVeryLightGray.
	self addMorph: self registerProjectButton.
	
	licenseLabel := TextMorph new.
	self licenseLabel 
		position: self position + (10@100);
		contents: 'License: '.
	self addMorph: self licenseLabel.
	
	licenseField := TextFieldMorph new.
	self licenseField
		position: self position + (90@100);
		width: 300;
		height: 33;
 		contents: 'enter license'.
	self addMorph: self licenseField.
	
	tagsLabel := TextMorph new.
	self tagsLabel 
		position: self position + (10@140);
		contents: 'Tags: '.
	self addMorph: self tagsLabel.
	
	tagsField := TextFieldMorph new.
	self tagsField
		position: self position + (90@140);
		width: 300;
		height: 33;
 		contents: 'enter tags'.
	self addMorph: self tagsField.
	
	websiteLabel := TextMorph new.
	self websiteLabel 
		position: self position + (10@180);
		contents: 'Website: '.
	self addMorph: self websiteLabel.
	
	websiteField := TextFieldMorph new.
	self websiteField
		position: self position + (90@180);
		width: 300;
		height: 48;
 		contents: 'enter website'.
	self addMorph: self websiteField.
	
	descriptionLabel := TextMorph new.
	self descriptionLabel 
		position: self position + (10@240);
		contents: 'Description: '.
	self addMorph: descriptionLabel.
	
	descriptionField := TextFieldMorph new.
	self descriptionField
		position: self position + (90@240);
		width: 300;
		height: 75;
 		contents: 'enter description'.
	self addMorph: self descriptionField.
	
	contributorLabel := TextMorph new.
	self contributorLabel
		position: self position + (10@350);
		contents: 'Contributors: '.
	self addMorph: self contributorLabel.
	
	watcherLabel := TextMorph new.
	self watcherLabel
		position: self position + (205@350);
		contents: 'Watchers: '.
	self addMorph: self watcherLabel.
	
	self cancelButton: SimpleButtonMorph new.
	self cancelButton
		position: self position + (295@320);
		label: 'cancel';
		target: self;
		actionSelector: #cancelProjectChanges;
		color: Color veryVeryLightGray.
	self addMorph: self cancelButton.
	
	self saveButton: SimpleButtonMorph new.
	self saveButton
		position: self position + (350@320);
		label: 'save';
		target: self;
		actionSelector: #saveProjectChanges;
		color: Color veryVeryLightGray.
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
		position: self position + (10@370);
		width: 185;
		height: 100;
		doubleClickSelector: #contributorListClick.
	self addMorph: self contributorListMorph.
	
	self watcherListMorph: (PluggableListMorph 
		on: self
		list: #watcher
		selected: #watcherListMorphIndex
		changeSelected: #watcherListMorphIndex:).
	self watcherListMorph 
		position: self position + (205@370);
		width: 185;
		height: 100;
		doubleClickSelector: #watcherListClick.
	self addMorph: self watcherListMorph.

	self openInHand 