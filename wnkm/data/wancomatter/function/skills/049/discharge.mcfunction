scoreboard players remove @s Mana 8
scoreboard players set @s CooldownX 160
scoreboard players set @s CooldownX_max 160
summon minecraft:marker 0.0 0.0 0.0 {Tags:["vector","wnkm.owned","wnkm.round"]}
data modify entity @e[tag=vector,limit=1] Pos set from entity @s Motion
execute as @e[tag=vector] positioned as @s positioned ~ ~0.20 ~ run tp @s ^ ^ ^0.47

execute at @s anchored eyes run execute anchored eyes run summon splash_potion ^ ^ ^ {Fire:32767s,Item:{components:{"minecraft:potion_contents":{custom_color:65280,custom_effects:[{amplifier:49b,duration:1,id:"minecraft:bad_omen",show_particles:0b}]}},count:1,id:"minecraft:lingering_potion"},Tags:["this","wnkm.owned","wnkm.round"]}
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
execute store result entity @e[tag=this,limit=1] Item.components."minecraft:potion_contents".custom_effects[0].Duration int 1 run scoreboard players get @s playerNumber
tag @e[tag=this] remove this
kill @e[tag=vector]

playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1.2 0.8
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1.2 0.8
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1.2 0.8
#execute anchored eyes run particle minecraft:explosion ^ ^ ^1 0 0 0 1 1 force
