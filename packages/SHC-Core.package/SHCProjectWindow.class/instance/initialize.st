as yet unclassified
initialize
	super initialize.
	
	self width: 400.
	self height: 700.
	
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

	editLicenseButton := SimpleButtonMorph new.
	editLicenseButton
		position: licenseLabel position + (320@0);
		label: 'edit';
		target: self;
		actionSelector: #editLicense.
	self addMorph: editLicenseButton.
	
	tagsLabel := TextMorph new.
	tagsLabel 
		position: self position + (20@120);
		contents: 'Tags: '.
	self addMorph: tagsLabel.
	
	editTagsButton := SimpleButtonMorph new.
	editTagsButton
		position: tagsLabel position + (320@0);
		label: 'edit';
		target: self;
		actionSelector: #editTags.
	self addMorph: editTagsButton.
		
	websiteLabel := TextMorph new.
	websiteLabel 
		position: self position + (20@150);
		contents: 'Website: '.
	self addMorph: websiteLabel.

	editWebsiteButton := SimpleButtonMorph new.
	editWebsiteButton
		position: websiteLabel position + (320@0);
		label: 'edit';
		target: self;
		actionSelector: #editWebsite.
	self addMorph: editWebsiteButton.

	descriptionLabel := TextMorph new.
	descriptionLabel 
		position: self position + (20@180);
		contents: 'Description: '.
	self addMorph: descriptionLabel.
	
	editDescriptionButton := SimpleButtonMorph new.
	editDescriptionButton
		position: descriptionLabel position + (320@0);
		label: 'edit';
		target: self;
		actionSelector: #editDescription.
	self addMorph: editDescriptionButton.

	self openInHand 