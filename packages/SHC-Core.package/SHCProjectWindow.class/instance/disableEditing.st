ui-actions
disableEditing
		self watcherLabel position: self window position + (205@350).
		self contributorLabel position: self window position + (10@350).
		(self watcherListMorph) position: self window position + (205@370);
								 height: 120.
		(self contributorListMorph) position: self window position + (10@370);
									height: 120.
		(self descriptionField findA: TextMorph) lock.
		(self tagsField findA: TextMorph) lock.
		(self websiteField findA: TextMorph) lock.
		(self licenseField findA: TextMorph) lock.