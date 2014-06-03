as yet unclassified
initialize 
	super initialize.

	self
		width: 570;
		height: 600;
		setLabel: 'Profile'.
	
	"Profile picture"
	profilePictureMorph := ImageMorph new.
	profilePictureMorph
		position: self position + (10@20);
		width: 75;
		height: 100.
	self addMorph: profilePictureMorph.
	
	"Display name"
	displayNameLabel := TextMorph new.
	displayNameLabel
		contents: 'Display Name';
		position: self position + (100@20).
	self addMorph: displayNameLabel.
	
	"Username"
	usernameLabel := TextMorph new.
	usernameLabel
		contents: '~username';
		position: self position + (100@45).
	self addMorph: usernameLabel.
	
	"Timeline"
	timelineLabel := TextMorph new.
	timelineLabel
		contents: 'Timeline';
		position: self position + (10@100).
	self addMorph: timelineLabel.
	
	self timelineIndex: 0.
	timelineList := PluggableListMorph
		on: self
		list: #timeline
		selected: #timelineIndex
		changeSelected: #timelineIndex:.
	timelineList
		position: self position + (10@120);
		width: 250;
		height: 200.
	self addMorph: timelineList.
	
	"Teams"
	teamsLabel := TextMorph new.
	teamsLabel
		contents: 'Teams';
		position: self position + (275@100).
	self addMorph: teamsLabel.
	
	self teamsIndex: 0.
	teamsList := PluggableListMorph
		on: self
		list: #teams
		selected: #teamsIndex
		changeSelected: #teamsIndex:.
	teamsList
		position: self position + (275@120);
		width: 250;
		height: 200.
	self addMorph: teamsList.
	
	"Projects"
	projectsLabel := TextMorph new.
	projectsLabel
		contents: 'Projects';
		position: self position + (10@350).
	self addMorph: projectsLabel.
	
	self projectsIndex: 0.
	projectsList := PluggableListMorph
		on: self
		list: #projects
		selected: #projectsIndex
		changeSelected: #projectsIndex:.
	projectsList
		position: self position + (10@370);
		width: 250;
		height: 200.
	self addMorph: projectsList.
	
	"Watching"
	watchingLabel := TextMorph new.
	watchingLabel
		contents: 'Watching these projects';
		position: self position + (275@350).
	self addMorph: watchingLabel.
	
	self watchingIndex: 0.
	watchingList := PluggableListMorph
		on: self
		list: #watching
		selected: #watchingIndex
		changeSelected: #watchingIndex:.
	watchingList
		position: self position + (275@370);
		width: 250;
		height: 200.
	self addMorph: watchingList.
	
	self openInHand.
	