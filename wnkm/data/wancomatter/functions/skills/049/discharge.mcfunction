scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160
summon minecraft:marker 0.0 0.0 0.0 {Tags:["vector"]}
data modify entity @e[tag=vector,limit=1] Pos set from entity @s Motion
execute as @e[tag=vector] positioned as @s positioned ~ ~0.20 ~ run tp @s ^ ^ ^0.47

execute at @s anchored eyes run execute anchored eyes run summon minecraft:potion ^ ^ ^ {Fire:32767s,Tags:["this"],Item:{id:"minecraft:lingering_potion",Count:1b,tag:{CustomPotionColor:65280,CustomPotionEffects:[{Id:31b,Amplifier:49b,ShowParticles:0b,Duration:1}]}}}
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
execute store result entity @e[tag=this,limit=1] Item.tag.CustomPotionEffects[0].Duration int 1 run scoreboard players get @s playerNumber
tag @e[tag=this] remove this
kill @e[tag=vector]

playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1.2 0.8
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1.2 0.8
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1.2 0.8
#execute anchored eyes run particle minecraft:explosion ^ ^ ^1 0 0 0 1 1 force