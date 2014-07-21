initialization
createUI
	self usernameField: TextFieldMorph new.
	(self usernameField)
		position: self window position + (240@31);
		width: 220;
		height: 25; "+10px, http://bugs.squeak.org/view.php?id=5711"
		borderWidth: 1;
 		contents: 'username'.
	self window addMorph: self usernameField.
	
	self searchField: TextFieldMorph new.
	(self searchField)
		position: self window position + (10 @ 31);
		width: 190;
		height: 25;
		borderWidth: 1;
		contents: 'Search...'.
	self window addMorph: self searchField.
		
	self passwordField: TextFieldMorph new.
	(self passwordField)
		position: self window position + (240@61);
		width: 220;
		height: 25; "+10px, http://bugs.squeak.org/view.php?id=5711"
		borderWidth: 1;
		contents: 'password'.
		
	"Badass bypass because TextFieldMorph>>fontName:size: is useless"
	"This should be a password field"
	(self passwordField findA: TextMorph) font: (StrikeFont passwordFontSize: 12).
	self window addMorph: self passwordField.		
	
	self loginButton: SimpleButtonMorph new.
	(self loginButton)
		position: self window position + (419@92);
		label: 'Login';
		target: self;
		actionSelector: (#loginAndShowProjects);
		color: Color veryVeryLightGray.
	self window addMorph: self loginButton.
	
	self logoutButton: SimpleButtonMorph new.
	(self logoutButton)
		position: self window position + (410@33);
		label: 'Logout';
		target: self;
		actionSelector: #logout;
		color: Color veryVeryLightGray.
	self window addMorph: self logoutButton.
	
	self showProfileButton: SimpleButtonMorph new.
	(self showProfileButton)
		position: self window position + (340@33);
		label: 'My Profile';
		target: self;
		actionSelector: #showOwnProfile;
		color: Color veryVeryLightGray.
	self window addMorph: self showProfileButton.
	
	self mainListMorph: (PluggableListMorph
		on: self
		list: #searchResults
		selected: #mainListMorphIndex
		changeSelected: #mainListMorphIndex:).
	self mainListMorph
		position: self window position + (10@61);
		width: 220;
		height: 310;
		doubleClickSelector: #mainListClick.
	self window addMorph: self mainListMorph.
	
	self searchButton: SimpleButtonMorph new.
	self searchButton
		position: self window position + (202@33);
		label: 'Go!';
		target: self;
		actionSelector: #searchButtonClick;
		color: Color veryVeryLightGray.
	self window addMorph: self searchButton.
	
	self myProjectsListMorph: (PluggableListMorph 
		on: self
		list: #projectNames
		selected: #myProjectsListMorphIndex
		changeSelected: #myProjectsListMorphIndex:).
	self myProjectsListMorph 
		position: self window position + (240@61);
		width: 220;
		height: 310;
		doubleClickSelector: #myProjectsListClick.
	self window addMorph: self myProjectsListMorph.
	
	self myProjectsTextMorph: TextMorph new.
	(self myProjectsTextMorph)
		contents: 'My Projects:';
		position: self window position + (240@33).
	self window addMorph: self myProjectsTextMorph.
	