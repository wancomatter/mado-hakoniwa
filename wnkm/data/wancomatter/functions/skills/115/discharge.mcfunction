execute anchored eyes run summon armor_stand ^ ^-0.4 ^ {Tags:["this","stable","boomerang"],Marker:1b,Small:1b,NoGravity:1b,Invisible:1b,Fire:32767s,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:115}},{}],Pose:{RightArm:[0f,0f,-90f]}}
execute store result score @e[tag=this,limit=1] subcounter run data get entity @s SelectedItemSlot
data modify entity @e[tag=this,limit=1] Rotation set from entity @s Rotation
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this

playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 1.2 0.5
tag @s add p.boomerang
clear @s minecraft:carrot_on_a_stick{CustomModelData:115}