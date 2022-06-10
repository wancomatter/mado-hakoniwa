scoreboard players remove @s Mana 7
scoreboard players set @s CooldownX 440
scoreboard players set @s CooldownX_max 440

summon minecraft:area_effect_cloud 0.0 0.0 0.0 {Tags:["vector"],Duration:1}
data modify entity @e[tag=vector,limit=1] Pos set from entity @s Motion
execute as @e[tag=vector] positioned as @s positioned ~ ~0.20 ~ run tp @s ^ ^ ^0.47
execute at @s anchored eyes run execute anchored eyes run summon minecraft:potion ^ ^ ^ {Fire:2s,Tags:["this"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:15592941,CustomPotionEffects:[{Id:31,Amplifier:58b,ShowParticles:0b,Duration:1}]}}}
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
tag @e[tag=this] remove this
kill @e[tag=vector]

playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1.2 0.5