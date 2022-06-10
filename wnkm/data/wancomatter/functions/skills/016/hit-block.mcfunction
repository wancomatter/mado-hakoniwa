execute positioned as @e[tag=discharge] run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.1 5 force @a
#ブロック端判定
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.25 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.125 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.0625 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.03125 if block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~

execute at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.3 0.5
execute at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.3 0.5
execute at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1.3 0.5
execute at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1.3 2
execute at @s rotated 0 0 run function wancomatter:skills/016/particle
execute at @s rotated ~ -90 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute at @s rotated ~ 90 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a

execute at @s as @e[distance=..6,tag=largeEntity] if score @s teamNumber = #dummy teamNumber run tag @s add heal-hit
execute at @s as @e[distance=..5] if score @s teamNumber = #dummy teamNumber run tag @s add heal-hit
execute if entity @e[tag=heal-hit,limit=1] at @e[tag=heal-hit] run particle minecraft:heart ~ ~1 ~ 1 1 1 1 8 normal @a
execute if entity @e[tag=heal-hit,limit=1] at @e[tag=heal-hit] run particle minecraft:heart ~ ~1 ~ 1 1 1 1 2 force @a
execute if entity @e[tag=heal-hit,limit=1] at @e[tag=heal-hit] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 20 normal @a
execute if entity @e[tag=heal-hit,limit=1] at @e[tag=heal-hit] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 5 force @a
execute if entity @e[tag=heal-hit,tag=user,limit=1] run scoreboard players set #dummy HPheal 100
execute if entity @e[tag=heal-hit,tag=user,limit=1] run scoreboard players operation #dummy HPheal *= #dummy healPower
execute if entity @e[tag=heal-hit,tag=user,limit=1] run scoreboard players operation #dummy HPheal /= #100 counter
execute if entity @e[tag=heal-hit,tag=user,limit=1] as @e[tag=heal-hit,tag=user] run scoreboard players operation @s HPheal += #dummy HPheal
execute if entity @e[tag=heal-hit,tag=!user,limit=1] run scoreboard players set #dummy HPheal 130
execute if entity @e[tag=heal-hit,tag=!user,limit=1] run scoreboard players operation #dummy HPheal *= #dummy healPower
execute if entity @e[tag=heal-hit,tag=!user,limit=1] run scoreboard players operation #dummy HPheal /= #100 counter
execute if entity @e[tag=heal-hit,tag=!user,limit=1] as @e[tag=heal-hit,tag=!user] run scoreboard players operation @s HPheal += #dummy HPheal


tag @e[tag=heal-hit] remove heal-hit
tag @s add heal-stop
scoreboard players set #dummy counter 60