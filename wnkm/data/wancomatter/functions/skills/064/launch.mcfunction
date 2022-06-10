execute anchored eyes run summon marker ^ ^ ^ {Tags:["anti_aircraft_projectile","first"]}
scoreboard players operation @e[tag=first,limit=1] subcounter = @s counter
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
execute anchored eyes run tp @e[tag=first] ^ ^ ^ ~ ~
tag @e[tag=first] remove first
data merge block 45 2 -18 {auto:1b}

effect clear @s minecraft:slowness
