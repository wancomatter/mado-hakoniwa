particle dust 0.1 0.1 0.1 1 ~ ~ ~ 0.5 0.5 0.5 1 8 normal @a
particle dust 0.1 0.1 0.1 1 ~ ~ ~ 0.5 0.5 0.5 1 2 force @a
particle dust 0.1 0.1 0.1 1 ~ ~ ~ 2.5 0.9 2.5 1 20 normal @a
particle dust 0.1 0.1 0.1 1 ~ ~ ~ 2.5 0.9 2.5 1 5 force @a
#function wancomatter:skills/021/poison-circle
#scoreboard players set @s dummy 0
tag @s add now-cobweb
scoreboard players operation #dummy teamNumber = @s teamNumber
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @e[distance=..16,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now-cobweb,distance=..5.0] run function wancomatter:skills/021/poison-effect
execute as @e[distance=..16,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now-cobweb,distance=..5.0] run function wancomatter:skills/021/poison-effect
execute as @e[distance=..6.5,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now-cobweb,distance=..4.0] run function wancomatter:skills/021/poison-effect
execute as @e[distance=..6.5,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now-cobweb,distance=..4.0] run function wancomatter:skills/021/poison-effect
scoreboard players reset #dummy
tag @s remove now-cobweb