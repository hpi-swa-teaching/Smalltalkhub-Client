initialization
createUI
	self usernameField: TextFieldMorph new.
	(self usernameField)
		"position: self position + (240@31);"
		width: 220;
		height: 35; "+10px, http://bugs.squeak.org/view.php?id=5711"
 		contents: 'username'.
	self window addMorph: self usernameField frame: (0.5@0.0 corner: 1.0@0.1).
	
	self searchField: TextFieldMorph new.
	(self searchField)
		"position: self position + (10 @ 31);"
		width: 190;
		height: 35;
		contents: 'Search...'.
	self window addMorph: self searchField frame: (0.0@0.0 corner: 0.4@0.1).
		
	self passwordField: TextFieldMorph new.
	(self passwordField)
		"position: self position + (240@71);"
		width: 220;
		height: 35; "+10px, http://bugs.squeak.org/view.php?id=5711"
		contents: 'password'.
		
	"Badass bypass because TextFieldMorph>>fontName:size: is useless"
	"This should be a password field"
	(self passwordField findA: TextMorph) font: (StrikeFont passwordFontSize: 12).
	self window addMorph: self passwordField frame: (0.5@0.1 corner: 1.0@0.2).
	
	self loginButton: SimpleButtonMorph new.
	(self loginButton)
		"position: self position + (419@112)"
		label: 'Login';
		target: self;
		actionSelector: (#loginAndShowProjects);
		color: Color veryVeryLightGray.
	self window addMorph: self loginButton frame: (0.5@0.2 corner: 1.0@0.3).
	
	self logoutButton: SimpleButtonMorph new.
	(self logoutButton)
		"position: self position + (410@36);"
		label: 'Logout';
		target: self;
		actionSelector: #logout;
		color: Color veryVeryLightGray.
	self window addMorph: self logoutButton frame: (0.8@0.0 corner: 1.0@0.1).
	
	self showProfileButton: SimpleButtonMorph new.
	(self showProfileButton)
		"position: self position + (340@36);"
		label: 'My Profile';
		target: self;
		actionSelector: #showOwnProfile;
		color: Color veryVeryLightGray.
	self window addMorph: self showProfileButton frame: (0.7@0.0 corner: 0.8@0.1).
	
	self mainListMorph: (PluggableListMorph
		on: self
		list: #searchResults
		selected: #mainListMorphIndex
		changeSelected: #mainListMorphIndex:).
	self mainListMorph
		"position: self position + (10@71);"
		width: 220;
		height: 300;
		doubleClickSelector: #mainListClick.
	self window addMorph: self mainListMorph frame: (0.0@0.1 corner: 0.5@1.0).
	
	self searchButton: SimpleButtonMorph new.
	self searchButton
		"position: self position + (202@36);"
		label: 'Go!';
		target: self;
		actionSelector: #searchButtonClick;
		color: Color veryVeryLightGray.
	self window addMorph: self searchButton frame: (0.4@0.0 corner: 0.5@0.1).
	
	self myProjectsListMorph: (PluggableListMorph 
		on: self
		list: #projectNames
		selected: #myProjectsListMorphIndex
		changeSelected: #myProjectsListMorphIndex:).
	self myProjectsListMorph 
		"position: self position + (240@71);"
		width: 220;
		height: 300;
		doubleClickSelector: #myProjectsListClick.
	self window addMorph: self myProjectsListMorph frame: (0.5@0.1 corner: 1.0@1.0).
	
	self myProjectsTextMorph: TextMorph new.
	(self myProjectsTextMorph)
		contents: 'My Projects:'.
		"position: self position + (240@36)."
	self window addMorph: self myProjectsTextMorph frame: (0.5@0.0 corner: 0.7@0.1).
	