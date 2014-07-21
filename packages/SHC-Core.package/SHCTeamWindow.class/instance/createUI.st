initialization
createUI 	
	(self window)
		width: 370;
		height: 280;
		setLabel: 'Team'.
		
	self team: SHCTeam new.
	
	"Display teamName"
	teamNameLabel := TextMorph new.
	self teamNameLabel
		contents: 'teamName';
		fontName: #ComicBold size:24;
		position: self window position + (10@25).
	self window addMorph: self teamNameLabel.
	
	"TeamMember"
	teamMemberLabel := TextMorph new.
	self teamMemberLabel
		contents: 'TeamMember';
		position: self window position + (10@50).
	self window addMorph: self teamMemberLabel.
	
	self teamsIndex: 0.
	teamMemberList := PluggableListMorph
		on: self
		list: #teamMemberNames
		selected: #teamsIndex
		changeSelected: #teamsIndex:.
	self teamMemberList
		position: self window position + (10@70);
		width: 170;
		height: 200;
		doubleClickSelector: #teamsListClick.
	self window addMorph: self teamMemberList.
	
	"Projects"
	projectsLabel := TextMorph new.
	self projectsLabel
		contents: 'Projects';
		position: self window position + (190@50).
	self window addMorph: self projectsLabel.
	
	self projectsIndex: 0.
	projectsList := PluggableListMorph
		on: self
		list: #projectNames
		selected: #projectsIndex
		changeSelected: #projectsIndex:.
	self projectsList
		position: self window position + (190@70);
		width: 170;
		height: 200;
		doubleClickSelector: #projectsListClick.
	self window addMorph: self projectsList.
