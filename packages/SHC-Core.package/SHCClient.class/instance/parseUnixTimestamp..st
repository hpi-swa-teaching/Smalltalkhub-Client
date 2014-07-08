utilities
parseUnixTimestamp: aUnixTimestamp
	| s h m x b c d e f ts r1 |
	ts := aUnixTimestamp asFloat.
 	s := ts \\ 86400.
 	h := s quo: 3600.
 	m := (s quo: 60) \\ 60.
	s := (s \\ 60) asInteger.
	
	ts := (ts quo: 86400) asFloat.
	self break.
  	x := ((ts * 4 + 102032) / 146097) + 15.
  	b := ts + 2442113 + x - (x / 4).
  	c := ((b * 20) - 2442) / 7305.
  	d := b - (365 * c) - (c / 4).
  	e := d * 1000 / 30601.
  	f := d - (e * 30) - ((e * 601) / 1000).
	(e < 14) 
		ifTrue: [r1 := (f asString) , '.' , ((e-1) asInteger asString) , '.' , ((c-4716) asInteger asString) , ' ' , (h asInteger asString) , ':' , (m asInteger asString) , ':' , (s asInteger asString) , 'Uhr'] 
		ifFalse: [r1 := (f asString) , '.' , ((e-13) asInteger asString) , '.' , ((c-4715) asInteger asString) , ' ' , (h asInteger asString) , ':' , (m asInteger asString) , ':' , (s asInteger asString) , 'Uhr'].
	self break.
  	(e < 14) ifTrue: [^ (f asString) , '.' , ((e-1) asString) , '.' , ((c-4716) asString) , ' ' , (h asString) , ':' , (m asString) , ':' , (s asString) , 'Uhr'] ifFalse: [^ (f asString) , '.' , ((e-13) asString) , '.' , ((c-4715) asString) , ' ' , (h asString) , ':' , (m asString) , ':' , (s asString) , 'Uhr']