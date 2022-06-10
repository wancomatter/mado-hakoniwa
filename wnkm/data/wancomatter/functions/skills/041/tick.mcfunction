particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0 8 force @a
particle minecraft:firework ~ ~ ~ 0 0 0 0 1 normal @a
particle minecraft:firework ^ ^ ^0.5 0 0 0 0 1 normal @a
scoreboard players add @s counter 1

tag @s add this
execute as @a if score @s playerNumber = @e[tag=this,limit=1] playerNumber rotated as @s as @e[tag=this] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @s remove this

execute unless score @s counter matches 81.. positioned ^ ^ ^0.333 unless block ~ ~ ~ #wancomatter:air run function wancomatter:skills/041/hit-block
execute unless score @s counter matches 81.. positioned ^ ^ ^0.667 unless block ~ ~ ~ #wancomatter:air run function wancomatter:skills/041/hit-block
execute unless score @s counter matches 81.. positioned ^ ^ ^1.000 unless block ~ ~ ~ #wancomatter:air run function wancomatter:skills/041/hit-block
execute unless score @s counter matches 81.. positioned ^ ^ ^0.333 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] at @s positioned ^ ^ ^0.333 run function wancomatter:skills/041/hit-block
execute unless score @s counter matches 81.. positioned ^ ^ ^0.667 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] at @s positioned ^ ^ ^0.667 run function wancomatter:skills/041/hit-block
execute unless score @s counter matches 81.. positioned ^ ^ ^1.000 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] at @s positioned ^ ^ ^1.000 run function wancomatter:skills/041/hit-block
tp @s ^ ^ ^1
scoreboard players reset #dummy

execute if score @s counter matches 80 run function wancomatter:skills/041/hit-block
execute if score @s counter matches 81.. run kill @s