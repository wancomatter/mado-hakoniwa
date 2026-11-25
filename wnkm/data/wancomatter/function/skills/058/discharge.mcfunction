scoreboard players remove @s Mana 7
scoreboard players set @s CooldownX 440
scoreboard players set @s CooldownX_max 440

summon minecraft:area_effect_cloud 0.0 0.0 0.0 {Duration:1,Tags:["vector","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
data modify entity @e[tag=vector,limit=1] Pos set from entity @s Motion
execute as @e[tag=vector] positioned as @s positioned ~ ~0.20 ~ run tp @s ^ ^ ^0.47
execute at @s anchored eyes run execute anchored eyes run summon splash_potion ^ ^ ^ {Fire:2s,Item:{components:{"minecraft:potion_contents":{custom_color:15592941,custom_effects:[{amplifier:58b,duration:1,id:"minecraft:bad_omen",show_particles:0b}]}},count:1,id:"minecraft:lingering_potion"},Tags:["this","wnkm.owned","wnkm.round"]}
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
tag @e[tag=this] remove this
kill @e[tag=vector]

playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1.2 0.5
