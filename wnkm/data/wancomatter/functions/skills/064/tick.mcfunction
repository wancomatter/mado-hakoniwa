scoreboard players add @s counter 1
tag @s add 064
execute as @a[tag=anti_aircraft_using] if score @s playerNumber = @e[tag=064,limit=1,sort=nearest] playerNumber at @s run function wancomatter:skills/064/tick_p
tag @s remove 064
execute if score @s counter matches 16.. run kill @s
