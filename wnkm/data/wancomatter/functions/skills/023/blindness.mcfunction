tag @s add flash_dummy
execute as @e[tag=flash_blind] if score @s playerNumber = @e[tag=flash_dummy,limit=1] playerNumber run effect give @s minecraft:blindness 7 0
execute as @e[tag=flash_blind] if score @s playerNumber = @e[tag=flash_dummy,limit=1] playerNumber run tag @s remove flash_blind
tag @s remove flash_dummy