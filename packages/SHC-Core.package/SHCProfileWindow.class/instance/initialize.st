as yet unclassified
initialize 
	super initialize.
	
	teams := #().
	timeline := #().
	projects := #().
	watching := #().
	
	(self window)
		width: 540;
		height: 620;
		setLabel: 'Profile'.
	
	"Display name"
	displayNameLabel := TextMorph new.
	self displayNameLabel
		contents: 'fullName';
		fontName: #ComicBold size:24.
		"position: self window position + (10@25)."
	self window addMorph: self displayNameLabel frame: (0.00@0.00 corner: 1.00@0.06).
	
	"user details"
	usernameLabel := TextMorph new.
	self usernameLabel
		contents: '~username'.
		"position: self window position + (10@45)."
	self window addMorph: self usernameLabel frame: (0.00@0.06 corner: 1.00@0.10).
	
	locationLabel := TextMorph new.
	self locationLabel
		contents: 'Location'.
		"position: self window position + (10@65)."
	self window addMorph: self locationLabel frame: (0.00@0.10 corner: 1.00@0.14).
	
	websiteLabel := TextMorph new.
	self websiteLabel
		contents: 'Website'.
		"position: self window position + (10@85)."
	self window addMorph: self websiteLabel frame: (0.00@0.14 corner: 1.00@0.18).
	
	emailLabel := TextMorph new.
	self emailLabel
		contents: 'eMail'.
		"position: self window position + (10@105)."
	self window addMorph: self emailLabel frame: (0.00@0.18 corner: 1.00@0.22).
	
	"Projects"
	projectsLabel := TextMorph new.
	self projectsLabel
		contents: 'Projects'.
		"position: self window position + (10@140)."
	self window addMorph: self projectsLabel frame: (0.00@0.22 corner: 0.50@0.26).
	
	self projectsIndex: 0.
	projectsList := PluggableListMorph
		on: self
		list: #projects
		selected: #projectsIndex
		changeSelected: #projectsIndex:.
	"self projectsList
		position: self window position + (10@160);
		width: 250;
		height: 200."
	self window addMorph: self projectsList frame: (0.00@0.26 corner: 0.5@0.61).
	
	"Teams"
	teamsLabel := TextMorph new.
	self teamsLabel
		contents: 'Teams'.
		"position: self window position + (275@140)."
	self window addMorph: self teamsLabel frame: (0.50@0.22 corner: 1.00@0.26).
	
	self teamsIndex: 0.
	teamsList := PluggableListMorph
		on: self
		list: #teams
		selected: #teamsIndex
		changeSelected: #teamsIndex:.
	"self teamsList
		position: self window position + (275@160);
		width: 250;
		height: 200."
	self window addMorph: self teamsList frame: (0.50@0.26 corner: 1.00@0.61).
	
	"Timeline"
	timelineLabel := TextMorph new.
	self timelineLabel
		contents: 'Timeline'.
		"position: self window position + (10@390)."
	self window addMorph: self timelineLabel frame: (0.00@0.61 corner: 0.5@0.65).
	
	self timelineIndex: 0.
	timelineList := PluggableListMorph
		on: self
		list: #timeline
		selected: #timelineIndex
		changeSelected: #timelineIndex:.
	"self timelineList
		position: self window position + (10@410);
		width: 250;
		height: 200."
	self window addMorph: self timelineList frame: (0.00@0.65 corner: 0.5@1.00).
	
	"Watching"
	watchingLabel := TextMorph new.
	self watchingLabel
		contents: 'Watching these projects'.
		"position: self window position + (275@390)."
	self window addMorph: self watchingLabel frame: (0.5@0.61 corner: 1.0@0.65).
	
	self watchingIndex: 0.
	watchingList := PluggableListMorph
		on: self
		list: #watching
		selected: #watchingIndex
		changeSelected: #watchingIndex:.
	"self watchingList
		position: self window position + (275@410);
		width: 250;
		height: 200"
	self window addMorph: self watchingList frame: (0.5@0.65 corner: 1.0@1.0).
	
	self window color: Color transparent.