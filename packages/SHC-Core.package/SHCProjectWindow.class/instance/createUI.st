initialization
createUI
	
	self window width: 400.
	self window height: 480.
	
	projectNameLabel := TextMorph new.
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
	
	registerProjectButton := SimpleButtonMorph new.
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
	
	descriptionLabel := TextMorph new.
	self descriptionLabel 
		position: self window position + (10@70);
		contents: 'Description: '.
	self window addMorph: descriptionLabel.
	
	descriptionField := TextFieldMorph new.
	self descriptionField
		releaseActionMap;
		position: self window position + (10@90);
		width: 380;
		height: 68;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter description'.
	self window addMorph: self descriptionField.
		
	tagsLabel := TextMorph new.
	self tagsLabel 
		position: self window position + (10@160);
		contents: 'Tags: '.
	self window addMorph: self tagsLabel.
	
	tagsField := TextFieldMorph new.
	self tagsField
		position: self window position + (10@180);
		width: 380;
		height: 33;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter tags'.
	self window addMorph: self tagsField.
	
	websiteLabel := TextMorph new.
	self websiteLabel 
		position: self window position + (10@215);
		contents: 'Website: '.
	self window addMorph: self websiteLabel.
	
	websiteField := TextFieldMorph new.
	self websiteField
		position: self window position + (10@235);
		width: 380;
		height: 33;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter website'.
	self window addMorph: self websiteField.
	
	licenseLabel := TextMorph new.
	self licenseLabel 
		position: self window position + (10@270);
		contents: 'License: '.
	self window addMorph: self licenseLabel.
	
	licenseField := TextFieldMorph new.
	self licenseField
		position: self window position + (10@290);
		width: 380;
		height: 33;
		color: Color white;
		borderWidth: 1;
 		contents: 'enter license'.
	self window addMorph: self licenseField.
	
	contributorLabel := TextMorph new.
	self contributorLabel
		position: self window position + (10@350);
		contents: 'Contributors: '.
	self window addMorph: self contributorLabel.
	
	watcherLabel := TextMorph new.
	self watcherLabel
		position: self window position + (205@350);
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
		position: self window position + (10@370);
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
		position: self window position + (205@370);
		width: 185;
		height: 100;
		borderWidth: 0;
		doubleClickSelector: #watcherListClick.
	self window addMorph: self watcherListMorph.