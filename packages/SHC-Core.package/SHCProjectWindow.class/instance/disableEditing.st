ui-actions
disableEditing
		self watcherLabel position: self window position + (205@330).
		self contributorLabel position: self window position + (10@330).
		(self watcherListMorph) position: self window position + (205@350);
								 height: 120.
		(self contributorListMorph) position: self window position + (10@350);
									height: 120.
		(self descriptionField findA: TextMorph) lock.
		(self tagsField findA: TextMorph) lock.
		(self websiteField findA: TextMorph) lock.
		(self licenseField findA: TextMorph) lock.