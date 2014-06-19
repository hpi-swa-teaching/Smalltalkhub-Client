utilities
buildJson
	| jsonString |
	jsonString := '{',
		'"owner":"', (self ownerUid), '",',
		'"website":"', (self  website), '",',
		'"tagsString":"', (self tags), '",',
		'"projectDescription":"', (self description), '",',
		'"name":"', (self name), '",',
		'"license":"', (self license), '"',
			'}'.
	^ jsonString.