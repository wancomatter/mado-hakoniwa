scoreboard players remove @s Mana 12
scoreboard players set @s CooldownX 180
scoreboard players set @s CooldownX_max 180
execute positioned 0.0 0.15 0.0 run summon minecraft:armor_stand ^ ^ ^1.0 {Tags:["dischargeX","kill"],Marker:1b,NoGravity:1b,Invisible:1b}


execute at @s anchored eyes positioned ^ ^ ^1 run summon snowball ~ ~ ~ {Tags:["dischargeX","GreLauncher"],Fire:0s}
execute as @e[tag=dischargeX,tag=GreLauncher] store result score @s subcounter2 run data get entity @s UUIDMost 0.00000000023283064365386962890625
data modify entity @e[tag=dischargeX,tag=GreLauncher,limit=1] Motion set from entity @e[tag=dischargeX,tag=kill,limit=1] Pos

scoreboard players operation @e[tag=dischargeX,tag=GreLauncher,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=dischargeX,tag=GreLauncher,limit=1] playerNumber = @s playerNumber
execute if entity @e[tag=dischargeX,tag=GreLauncher,limit=1] as @e[tag=dischargeX,tag=GreLauncher] at @s run function wancomatter:skills/034/tick
tag @e[tag=dischargeX] remove dischargeX
scoreboard players reset #dummy
kill @e[tag=kill]

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 0.5
execute anchored eyes run particle minecraft:explosion ^ ^ ^ 0 0 0 1 2 normal @a
execute anchored eyes run particle minecraft:explosion ^ ^ ^ 0 0 0 1 1 force @a