accessing
initialize

	| usernameField passwordField loginButton logoutButton projectList "listOfProjects" |

	super initialize.
	
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
		actionSelector: (#login:password:);
		arguments: #('username' 'password').
	self addMorph: loginButton.
	
	logoutButton := SimpleButtonMorph new.
	logoutButton
		position: passwordField position + (passwordField width + 20@0);
		label: 'Logout';
		target: self;
		actionSelector: #logout.
	self addMorph: logoutButton.
	"
	listOfProjects := PluggableListMorph new.
	listOfProjects
		on: self;
		list: #('test' 'foo' 'bar').
	"
	projectList := LazyListMorph new.
	projectList
		"listSource: #listOfProjects;"
		position: self position + (20@110).
	self addMorph: projectList.
	
	self openInHand.
	
	