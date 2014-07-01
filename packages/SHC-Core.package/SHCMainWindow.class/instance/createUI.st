initialization
createUI
	self usernameField: TextFieldMorph new.
	(self usernameField)
		width: 220;
		height: 35; "+10px, http://bugs.squeak.org/view.php?id=5711"
 		contents: 'username'.
	self window addMorph: self usernameField frame: (0.5@0.0 corner: 1.0@0.1).
	
	self searchField: TextFieldMorph new.
	(self searchField)
		width: 190;
		height: 35;
		contents: 'Search...'.
	self window addMorph: self searchField frame: (0.0@0.0 corner: 0.4@0.1).
		
	self passwordField: TextFieldMorph new.
	(self passwordField)
		width: 220;
		height: 35; "+10px, http://bugs.squeak.org/view.php?id=5711"
		contents: 'password'.
		
	"Badass bypass because TextFieldMorph>>fontName:size: is useless"
	"This should be a password field"
	(self passwordField findA: TextMorph) font: (StrikeFont passwordFontSize: 12).
	self window addMorph: self passwordField frame: (0.5@0.1 corner: 1.0@0.2).
	
	self loginButton: PluggableButtonMorphPlus new.
	(self loginButton)
		label: 'Login';
		model: self;
		action: #loginAndShowProjects.
	self window addMorph: self loginButton frame: (0.5@0.2 corner: 1.0@0.3).
	
	self logoutButton: PluggableButtonMorphPlus new.
	(self logoutButton)
		label: 'Logout';
		model: self;
		action: #logout.
	self window addMorph: self logoutButton frame: (0.85@0.0 corner: 1.0@0.1).
	
	self showProfileButton: PluggableButtonMorphPlus new.
	(self showProfileButton)
		label: 'My Profile';
		model: self;
		action: #showOwnProfile.
	self window addMorph: self showProfileButton frame: (0.7@0.0 corner: 0.85@0.1).
	
	self mainListMorph: (PluggableListMorph
		on: self
		list: #searchResults
		selected: #mainListMorphIndex
		changeSelected: #mainListMorphIndex:).
	self mainListMorph
		width: 220;
		height: 300;
		doubleClickSelector: #mainListClick.
	self window addMorph: self mainListMorph frame: (0.0@0.1 corner: 0.5@1.0).
	
	self searchButton: PluggableButtonMorphPlus new.
	self searchButton
		label: 'Go!';
		model: self;
		action: #searchButtonClick.
	self window addMorph: self searchButton frame: (0.4@0.0 corner: 0.5@0.1).
	
	self myProjectsListMorph: (PluggableListMorph 
		on: self
		list: #projectNames
		selected: #myProjectsListMorphIndex
		changeSelected: #myProjectsListMorphIndex:).
	self myProjectsListMorph 
		width: 220;
		height: 300;
		doubleClickSelector: #myProjectsListClick.
	self window addMorph: self myProjectsListMorph frame: (0.5@0.1 corner: 1.0@1.0).
	
	self myProjectsTextMorph: TextMorph new.
	(self myProjectsTextMorph)
"		model: self;
		setText: 'My Projects:'."
		contents: 'My Projects:'.
	self window addMorph: self myProjectsTextMorph frame: (0.5@0.0 corner: 0.7@0.1).
	