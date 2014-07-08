as yet unclassified
parseMinute
	(self timestamp > (SHCUnixTimestampConverter minuteSecond))
		ifTrue: [self timestamp: self timestamp - (SHCUnixTimestampConverter minuteSecond).
				self increaseMinute.
				self parseMinute]