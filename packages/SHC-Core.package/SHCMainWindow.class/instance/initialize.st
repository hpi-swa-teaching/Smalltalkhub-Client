initialization
initialize

	super initialize.
	self width: 480.
	self height: 400.
	
	self client: SHCClient new.
		
	usernameField := TextFieldMorph new.
	usernameField
		position: self position + (263@31);
		width: 200;
		height: 35; "+10px, http://bugs.squeak.org/view.php?id=5711"
 		contents: 'username'.
	self addMorph: usernameField.
	
	searchField := TextFieldMorph new.
	searchField 
		position: self position + (20 @ 31);
		width: 200;
		height: 35;
		contents: 'Search...'.
	self addMorph: searchField.
		
	passwordField := TextFieldMorph new.
	passwordField
		position: self position + (263@71);
		width: 200;
		height: 35; "+10px, http://bugs.squeak.org/view.php?id=5711"
		contents: 'password'.
	self addMorph: passwordField.
	
	showProjectsButton := SimpleButtonMorph new.
	showProjectsButton
		position: self position + (263@150);
		label: 'My Projects';
		target: self;
		actionSelector: #showMyProjects.
	self addMorph: showProjectsButton.
	
	showTeamsButton := SimpleButtonMorph new.
	showTeamsButton 
		position: self position + (263@180);
		label: 'My Teams';
		target: self;
		actionSelector: #showMyTeams.
	self addMorph: showTeamsButton.
		
	
	loginButton := SimpleButtonMorph new.
	loginButton
		position: self position + (419@112);
		label: 'Login';
		target: self;
		actionSelector: (#loginAndShowProjects).
	self addMorph: loginButton.
	
	logoutButton := SimpleButtonMorph new.
	logoutButton
		position: self position + (410@71);
		label: 'Logout';
		target: self;
		actionSelector: #logout.
	self addMorph: logoutButton.
	
	showProfileButton := SimpleButtonMorph new.
	showProfileButton
		position: self position + (340@71);
		label: 'My Profile';
		target: self;
		actionSelector: #showOwnProfile.
	self addMorph: showProfileButton.

	self projectNames: #().
	self mainListMorphIndex: 0.
	self myProjectsListMorphIndex: 0.
	
	self mainListMorph: (PluggableListMorph
		on: self
		list: #searchResults
		selected: #mainListMorphIndex
		changeSelected: #mainListMorphIndex:).
	self mainListMorph
		position: self position + (20@71);
		width: 200;
		height: 300;
		doubleClickSelector: #mainListClick.
	self addMorph: self mainListMorph.
	
	self myProjectsListMorph: (PluggableListMorph 
		on: self
		list: #projectNames
		selected: #myProjectsListMorphIndex
		changeSelected: #myProjectsListMorphIndex:).
	self myProjectsListMorph 
		position: self position + (263@170);
		width: 200;
		height: 200;
		doubleClickSelector: #myProjectsListClick.
	self addMorph: self myProjectsListMorph.
	
	"
	createProjectField := TextFieldMorph new.
	createProjectField
		position: self position + (20@280);
		width: 200;
		height: 35;
		contents: 'SampleProjectName'.
	self addMorph: createProjectField.
	
	createProjectButton := SimpleButtonMorph new.
	createProjectButton
		position: createProjectField position + (createProjectField width + 20@0);
		label: 'create';
		target: self;
		actionSelector: (#createProject).
	self addMorph: createProjectButton.
	"	

	self openInHand.
	self applyLoggedOutUi.
	
	