scoreboard players remove @s Mana 9
scoreboard players set @s CooldownX 180
scoreboard players set @s CooldownX_max 180

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

execute if block ~ ~0.125 ~ #wancomatter:air run tp @s ~ ~0.125 ~
execute if block ~ ~0.25 ~ #wancomatter:air run tp @s ~ ~0.25 ~
execute if block ~ ~0.5 ~ #wancomatter:air run tp @s ~ ~0.5 ~
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run particle minecraft:sweep_attack ~ ~0.3 ~ 0.6 0.3 0.6 1 12 normal @a
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run summon armor_stand ^ ^ ^-0.5 {Tags:["discharge"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run particle minecraft:sweep_attack ~ ~0.3 ~ 0.6 0.3 0.6 1 12 normal @a
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run summon armor_stand ^ ^ ^-0.5 {Tags:["discharge"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run particle minecraft:sweep_attack ~ ~0.3 ~ 0.6 0.3 0.6 1 12 normal @a
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run summon armor_stand ^ ^ ^-0.5 {Tags:["discharge"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run particle minecraft:sweep_attack ~ ~0.3 ~ 0.6 0.3 0.6 1 12 normal @a
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run summon armor_stand ^ ^ ^-0.5 {Tags:["discharge"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run tp @s ~ ~ ~

execute at @s positioned ^ ^ ^0.8 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air positioned ^ ^ ^-0.3 if block ~ ~1 ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.55 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air positioned ^ ^ ^-0.3 if block ~ ~1 ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.425 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air positioned ^ ^ ^-0.3 if block ~ ~1 ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.36125 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air positioned ^ ^ ^-0.3 if block ~ ~1 ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.5 run particle minecraft:sweep_attack ~ ~0.3 ~ 0.6 0.3 0.6 1 12 normal @a
execute at @s positioned ^ ^ ^1.5 run particle minecraft:sweep_attack ~ ~0.3 ~ 0.6 0.3 0.6 1 12 normal @a
execute at @s run summon armor_stand ^ ^ ^0.5 {Tags:["discharge"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s run summon armor_stand ^ ^ ^1.5 {Tags:["discharge"],Marker:1b,Invisible:1b,NoGravity:1b}

execute at @e[tag=discharge] as @e[distance=..2,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute at @e[tag=discharge] as @e[distance=..1,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] run function wancomatter:skills/105/hit

kill @e[tag=discharge]

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
execute at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
scoreboard players reset #dummy