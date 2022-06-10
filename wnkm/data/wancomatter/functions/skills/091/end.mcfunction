scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a if score @s playerNumber = #dummy playerNumber run tag @s add user

execute as @e[distance=..10,scores={maxHP=1..}] if score @s teamNumber = @a[tag=user,limit=1] teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/091/buff

tag @a[tag=user] remove user
scoreboard players reset #dummy
kill @s