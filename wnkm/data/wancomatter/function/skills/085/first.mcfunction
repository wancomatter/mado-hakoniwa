scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 140
scoreboard players set @s CooldownX_max 140

execute anchored eyes run summon minecraft:arrow ^ ^ ^0.1 {Color:43520,Tags:["discharge","poison_needle","wnkm.owned","wnkm.round"],damage:1.1d,item:{components:{"minecraft:custom_data":{CustomPotionColor:43520}},count:1,id:"minecraft:arrow"},life:1200s}
execute positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^3 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["vector","wnkm.owned","wnkm.round"]}
data modify entity @e[tag=discharge,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]

playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 2
data modify entity @e[tag=discharge,limit=1] Owner set from entity @s UUID
tag @e[tag=discharge] remove discharge
scoreboard players reset #dummy
