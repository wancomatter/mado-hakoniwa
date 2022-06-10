scoreboard players add @s counter 1
execute if score @s subcounter2 matches 1.. run scoreboard players remove @s subcounter2 1
tag @s add it
execute as @a[tag=antares_using] if score @s playerNumber = @e[tag=it,limit=1] playerNumber run tag @s add user
execute if entity @s[tag=antares_bit_big,scores={subcounter2=..0}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/019/hit_round
tag @s remove it
execute unless entity @s[tag=antares_bit_big] positioned as @a[tag=user,limit=1,sort=nearest] positioned ^ ^ ^-1.5 run tp @s ~ ~ ~ ~8.8 0
execute if entity @s[tag=antares_bit_big] positioned as @a[tag=user,limit=1,sort=nearest] positioned ^ ^ ^-1.5 run tp @s ~ ~-0.3 ~ ~8.8 0
execute at @s run particle minecraft:dust 1 0.270 0.204 0.7 ~ ~0.9 ~ 0.2 0.2 0.2 1 4 normal @a
execute at @s run particle minecraft:dust 1 0.270 0.204 0.7 ~ ~0.9 ~ 0.2 0.2 0.2 1 1 force @a

execute if entity @a[tag=user,tag=magic_used,limit=1] run function wancomatter:skills/019/use_magic
execute if score @s counter matches 287.. run function wancomatter:skills/019/end
tag @a[tag=user] remove user