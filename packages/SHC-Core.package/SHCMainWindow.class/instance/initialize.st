as yet unclassified
initialize

	super initialize.
	self width: 340.
	self height: 280.
	
	self webclient: WebClient new.
		
	usernameField := TextFieldMorph new.
	usernameField
		position: self position + (20@30);
		width: 200;
		height: 35; "+10px, http://bugs.squeak.org/view.php?id=5711"
 		contents: 'username'.
	self addMorph: usernameField.
	
	passwordField := TextFieldMorph new.
	passwordField
		position: self position + (20@70);
		width: 200;
		height: 35; "+10px, http://bugs.squeak.org/view.php?id=5711"
		contents: 'password'.
	self addMorph: passwordField.
	
	loginButton := SimpleButtonMorph new.
	loginButton
		position: usernameField position + (usernameField width + 20@0);
		label: 'Login';
		target: self;
		actionSelector: (#loginAndShowProjects).
	self addMorph: loginButton.
	
	logoutButton := SimpleButtonMorph new.
	logoutButton
		position: passwordField position + (passwordField width + 20@0);
		label: 'Logout';
		target: self;
		actionSelector: #logout.
	self addMorph: logoutButton.

	projectList := TextMorph new.
	projectList
		contents: 'My projects:', Character cr asString;
		position: self position + (20@110).
	self addMorph: projectList.
	
	self projects: #().
	self projectListMorphIndex: 0.
	
	projectListMorph := PluggableListMorph
		on: self
		list: #projects
		selected: #projectListMorphIndex
		changeSelected: #projectListMorphIndex:.
	projectListMorph
		position: self position + (20@140);
		width: 200.
	self addMorph: projectListMorph.
	
	registerProjectButton := SimpleButtonMorph new.
	registerProjectButton
		position: projectListMorph position + (projectListMorph width + 20@0);
		label: '-> Metacello';
		target: self;
		actionSelector: #addSelectedProjectToMonticello.
	self addMorph: registerProjectButton.
	
	openProjectButton := SimpleButtonMorph new.
	openProjectButton
		position: projectListMorph position + (projectListMorph width + 20@30);
		label: 'Open Project';
		target: self;
		actionSelector: #openProjectWindow.
	self addMorph: openProjectButton.
	
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
	
	