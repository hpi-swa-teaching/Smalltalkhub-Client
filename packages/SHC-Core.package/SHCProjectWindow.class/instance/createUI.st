initialization
createUI	
	self window width: 400.
	self window height: 500.
	
	self projectNameLabel: TextMorph new.
	self projectNameLabel
		contents: 'ProjectNameDummyContent';
		fontName: #ComicBold size: 24;
		position: self window position + (10@30).
	self window addMorph: self projectNameLabel.
	
	self ownerLabel: SimpleButtonMorph new.
	self ownerLabel
		label: 'OwnerDummy';
		target: self;
		color: Color transparent;
		borderColor: Color transparent;
		actionSelector: #ownerLabelClick;
		position: self window position + (10@50).
	self window addMorph: self ownerLabel.
	
	self registerProjectButton: SimpleButtonMorph new.
	self registerProjectButton
		position: self window position + (278@33);
		label: 'add to Monticello';
		target: self;
		actionSelector: #addProjectToMonticello;
		color: Color veryVeryLightGray.
	self window addMorph: self registerProjectButton.
	
	self mcInfoTextMorph: TextMorph new.
	self mcInfoTextMorph 
		position: self window position + (270@33);
		contents: 'Already in Monticello'.
	self window addMorph: self mcInfoTextMorph.
	
	self createdLabel: TextMorph new.
	self createdLabel
		position: self window position + (10@70);
		contents: 'Created: '.
	self window addMorph: self createdLabel.
	
	self descriptionLabel: TextMorph new.
	self descriptionLabel 
		position: self window position + (10@90);
		contents: 'Description: '.
	self window addMorph: self descriptionLabel.
	
	self descriptionField: TextFieldMorph new.
	self descriptionField
		releaseActionMap;
		position: self window position + (10@110);
		width: 380;
		height: 68;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter description'.
	self window addMorph: self descriptionField.
		
	self tagsLabel: TextMorph new.
	self tagsLabel 
		position: self window position + (10@180);
		contents: 'Tags: '.
	self window addMorph: self tagsLabel.
	
	self tagsField: TextFieldMorph new.
	self tagsField
		position: self window position + (10@200);
		width: 380;
		height: 33;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter tags'.
	self window addMorph: self tagsField.
	
	self websiteLabel: TextMorph new.
	self websiteLabel 
		position: self window position + (10@235);
		contents: 'Website: '.
	self window addMorph: self websiteLabel.
	
	self websiteField: TextFieldMorph new.
	self websiteField
		position: self window position + (10@255);
		width: 380;
		height: 33;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter website'.
	self window addMorph: self websiteField.
	
	self licenseLabel: TextMorph new.
	self licenseLabel 
		position: self window position + (10@290);
		contents: 'License: '.
	self window addMorph: self licenseLabel.
	
	self licenseField: TextFieldMorph new.
	self licenseField
		position: self window position + (10@310);
		width: 380;
		height: 33;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter license'.
	self window addMorph: self licenseField.
	
	self contributorLabel: TextMorph new.
	self contributorLabel
		position: self window position + (10@370);
		contents: 'Contributors: '.
	self window addMorph: self contributorLabel.
	
	self watcherLabel: TextMorph new.
	self watcherLabel
		position: self window position + (205@370);
		contents: 'Watchers: '.
	self window addMorph: self watcherLabel.
	
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
		position: self window position + (10@390);
		width: 185;
		height: 100;
		borderWidth: 0;
		doubleClickSelector: #contributorListClick.
	self window addMorph: self contributorListMorph.
	
	self watcherListMorph: (PluggableListMorph 
		on: self
		list: #watcher
		selected: #watcherListMorphIndex
		changeSelected: #watcherListMorphIndex:).
	self watcherListMorph 
		position: self window position + (205@390);
		width: 185;
		height: 100;
		borderWidth: 0;
		doubleClickSelector: #watcherListClick.
	self window addMorph: self watcherListMorph.