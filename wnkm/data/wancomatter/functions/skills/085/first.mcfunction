scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 140
scoreboard players set @s CooldownX_max 140

execute anchored eyes run summon minecraft:arrow ^ ^ ^0.1 {Tags:["discharge","poison_needle"],life:1200s,damage:1.1d,Color:43520}
execute positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^3 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
data modify entity @e[tag=discharge,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2
data modify entity @e[tag=discharge,limit=1] Owner set from entity @s UUID
tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy