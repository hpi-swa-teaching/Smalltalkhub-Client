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
	
	self ownerLabel: SimpleButtonMorph new.
	self ownerLabel
		label: 'OwnerDummy';
		target: self;
		color: Color transparent;
		borderColor: Color transparent;
		actionSelector: #ownerLabelClick;
		position: self position + (10@50).
	self addMorph: self ownerLabel.
	
	registerProjectButton := SimpleButtonMorph new.
	self registerProjectButton
		position: self position + (278@33);
		label: 'add to Monticello';
		target: self;
		actionSelector: #addProjectToMonticello;
		color: Color veryVeryLightGray.
	self addMorph: self registerProjectButton.
	
	descriptionLabel := TextMorph new.
	self descriptionLabel 
		position: self position + (10@70);
		contents: 'Description: '.
	self addMorph: descriptionLabel.
	
	descriptionField := TextFieldMorph new.
	self descriptionField
		releaseActionMap;
		position: self position + (10@90);
		width: 380;
		height: 68;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter description'.
	self addMorph: self descriptionField.
		
	tagsLabel := TextMorph new.
	self tagsLabel 
		position: self position + (10@160);
		contents: 'Tags: '.
	self addMorph: self tagsLabel.
	
	tagsField := TextFieldMorph new.
	self tagsField
		position: self position + (10@180);
		width: 380;
		height: 33;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter tags'.
	self addMorph: self tagsField.
	
	websiteLabel := TextMorph new.
	self websiteLabel 
		position: self position + (10@215);
		contents: 'Website: '.
	self addMorph: self websiteLabel.
	
	websiteField := TextFieldMorph new.
	self websiteField
		position: self position + (10@235);
		width: 380;
		height: 33;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter website'.
	self addMorph: self websiteField.
	
	licenseLabel := TextMorph new.
	self licenseLabel 
		position: self position + (10@270);
		contents: 'License: '.
	self addMorph: self licenseLabel.
	
	licenseField := TextFieldMorph new.
	self licenseField
		position: self position + (10@290);
		width: 380;
		height: 33;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter license'.
	self addMorph: self licenseField.
	
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
		label: 'cancel';
		target: self;
		actionSelector: #cancelProjectChanges;
		color: Color veryVeryLightGray.
	
	self saveButton: SimpleButtonMorph new.
	self saveButton
		label: 'save';
		target: self;
		actionSelector: #saveProjectChanges;
		color: Color veryVeryLightGray.
	
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
		borderWidth: 0;
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
		borderWidth: 0;
		doubleClickSelector: #watcherListClick.
	self addMorph: self watcherListMorph.

	self openInHand 