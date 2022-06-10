scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add user
execute as @a[tag=user,limit=1,sort=nearest] at @s run function wancomatter:skills/104/tick2
scoreboard players remove @s counter 1
execute if score @s counter matches 1.. as @a[tag=user,limit=1,sort=nearest] at @s run function wancomatter:skills/104/tick2
scoreboard players remove @s counter 1
execute if score @s counter matches 1.. as @a[tag=user,limit=1,sort=nearest] at @s run function wancomatter:skills/104/tick2
scoreboard players remove @s counter 1
execute unless score @s counter matches 1.. run effect clear @a[tag=user] minecraft:levitation
tag @a[tag=user] remove user
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run function wancomatter:skills/104/hit

scoreboard players reset #dummy
execute unless score @s counter matches 1.. run kill @s