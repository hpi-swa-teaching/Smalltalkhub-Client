initialization
createUI
	usernameField := TextFieldMorph new.
	usernameField
		position: self position + (240@31);
		width: 220;
		height: 35; "+10px, http://bugs.squeak.org/view.php?id=5711"
 		contents: 'username'.
	self addMorph: usernameField.
	
	searchField := TextFieldMorph new.
	searchField 
		position: self position + (10 @ 31);
		width: 190;
		height: 35;
		contents: 'Search...'.
	self addMorph: searchField.
		
	passwordField := TextFieldMorph new.
	passwordField
		position: self position + (240@71);
		width: 220;
		height: 35; "+10px, http://bugs.squeak.org/view.php?id=5711"
		contents: 'password'.
		
	"Badass bypass because TextFieldMorph>>fontName:size: is useless"
	"This should be a password field"
	(passwordField findA: TextMorph) font: (StrikeFont passwordFontSize: 12).
	self addMorph: passwordField.		
	
	loginButton := SimpleButtonMorph new.
	loginButton
		position: self position + (419@112);
		label: 'Login';
		target: self;
		actionSelector: (#loginAndShowProjects);
		color: Color veryVeryLightGray.
	self addMorph: loginButton.
	
	logoutButton := SimpleButtonMorph new.
	logoutButton
		position: self position + (410@36);
		label: 'Logout';
		target: self;
		actionSelector: #logout;
		color: Color veryVeryLightGray.
	self addMorph: logoutButton.
	
	showProfileButton := SimpleButtonMorph new.
	showProfileButton
		position: self position + (340@36);
		label: 'My Profile';
		target: self;
		actionSelector: #showOwnProfile;
		color: Color veryVeryLightGray.
	self addMorph: showProfileButton.
	
	self mainListMorph: (PluggableListMorph
		on: self
		list: #searchResults
		selected: #mainListMorphIndex
		changeSelected: #mainListMorphIndex:).
	self mainListMorph
		position: self position + (10@71);
		width: 220;
		height: 300;
		doubleClickSelector: #mainListClick.
	self addMorph: self mainListMorph.
	
	self searchButton: SimpleButtonMorph new.
	self searchButton
		position: self position + (202@36);
		label: 'Go!';
		target: self;
		actionSelector: #searchButtonClick;
		color: Color veryVeryLightGray.
	self addMorph: self searchButton.
	
	self myProjectsListMorph: (PluggableListMorph 
		on: self
		list: #projectNames
		selected: #myProjectsListMorphIndex
		changeSelected: #myProjectsListMorphIndex:).
	self myProjectsListMorph 
		position: self position + (240@71);
		width: 220;
		height: 300;
		doubleClickSelector: #myProjectsListClick.
	self addMorph: self myProjectsListMorph.
	
	myProjectsTextMorph := TextMorph new.
	myProjectsTextMorph
		contents: 'My Projects:';
		position: self position + (240@36).
	self addMorph: myProjectsTextMorph.
	