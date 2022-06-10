scoreboard players remove @s Mana 12
scoreboard players set @s CooldownX 180
scoreboard players set @s CooldownX_max 180
execute positioned 0.0 0.5 0.0 run summon minecraft:armor_stand ^ ^ ^1.2 {Tags:["vector"],Marker:1b,NoGravity:1b,Invisible:1b}
#execute as @e[tag=vector] positioned as @s run tp @s ~ ~ ~ ~ ~
#scoreboard players set #dummy dummy -4000
#execute as @e[tag=vector,limit=1] at @s run function wancomatter:skills/recoil
#execute as @e[tag=vector,limit=1] at @s run tp @s ^ ^ ^1.0


execute at @s anchored eyes positioned ^ ^ ^1 run summon snowball ~ ~ ~ {Tags:["this","GreLauncher"],Fire:0s}
#execute as @e[tag=this,tag=GreLauncher] store result score @s subcounter2 run data get entity @s UUIDMost 0.00000000023283064365386962890625
data modify entity @e[tag=this,tag=GreLauncher,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos

scoreboard players operation @e[tag=this,tag=GreLauncher,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=this,tag=GreLauncher,limit=1] playerNumber = @s playerNumber
execute if entity @e[tag=this,tag=GreLauncher,limit=1] as @e[tag=this,tag=GreLauncher] at @s run function wancomatter:skills/034/tick
tag @e[tag=this] remove this
kill @e[tag=vector]
scoreboard players reset #dummy

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 0.5
