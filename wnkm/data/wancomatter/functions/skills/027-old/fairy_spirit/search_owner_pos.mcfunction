scoreboard players operation #- playerNumber = @s ownerNumber
execute as @a[distance=..144] if score @s playerNumber = #- playerNumber run tag @s add 027owner
scoreboard players reset #-

execute if entity @a[tag=027owner,limit=1] run function wancomatter:skills/027/fairy_spirit/set_motion
execute unless entity @e[tag=027owner,limit=1] run kill @s
execute if entity @a[tag=027owner,limit=1] run tag @a[tag=027owner] remove 027owner

scoreboard players set @s counter 0