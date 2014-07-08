as yet unclassified
parseMonth
	| monthSecond |
	monthSecond := (SHCUnixTimestampConverter daySecond * (SHCUnixTimestampConverter notLeapMonth at: self month)).
	(self timestamp > monthSecond)
		ifTrue: [self timestamp: self timestamp - monthSecond.
				self increaseMonth.
				self parseMonth]