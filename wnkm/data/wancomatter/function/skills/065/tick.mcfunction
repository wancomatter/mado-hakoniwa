scoreboard players add @s counter 1
tag @s add 065
execute as @a[tag=meditation_using] if score @s playerNumber = @e[tag=065,limit=1,sort=nearest] playerNumber at @s run function wancomatter:skills/065/tick_p
tag @s remove 065
execute if score @s counter matches 99.. run kill @s
