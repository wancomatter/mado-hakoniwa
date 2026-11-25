execute anchored eyes run summon armor_stand ^ ^-0.4 ^ {Fire:32767s,Invisible:1b,Marker:1b,NoGravity:1b,Pose:{RightArm:[0.0f,0.0f,-90.0f]},Small:1b,Tags:["this","stable","boomerang","wnkm.owned"],equipment:{mainhand:{components:{"minecraft:custom_data":{LegacySkill:115},"minecraft:item_model":"wnkm:appearance/carrot_on_a_stick/115"},count:1,id:"minecraft:carrot_on_a_stick"}}}
execute store result score @e[tag=this,limit=1] subcounter run data get entity @s SelectedItemSlot
data modify entity @e[tag=this,limit=1] Rotation set from entity @s Rotation
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this

playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1.2 0.5
tag @s add p.boomerang
clear @s minecraft:carrot_on_a_stick[custom_data~{LegacySkill:115}]
