scoreboard players operation @s dummy = @s deathTimer
scoreboard players operation @s dummy /= #20 counter
title @s times 6 30 20
title @s subtitle {"text":"復活まで"}
title @s title {"score":{"name":"@s","objective":"dummy"}}
