ui-actions
disableEditing
		self watcherLabel position: self position + (205@330).
		self contributorLabel position: self position + (10@330).
		(self watcherListMorph) position: self position + (205@350);
								 height: 120.
		(self contributorListMorph) position: self position + (10@350);
									height: 120.
		(self descriptionField findA: TextMorph) lock.
		(self tagsField findA: TextMorph) lock.
		(self websiteField findA: TextMorph) lock.
		(self licenseField findA: TextMorph) lock.