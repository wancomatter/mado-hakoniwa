summon minecraft:armor_stand ~ ~0.1 ~ {Tags:["this","bear_plant"],Marker:1b,NoGravity:1b,Invisible:1b}
execute positioned ~ ~0.1 ~ run tp @e[tag=this,limit=1] ~ ~ ~ ~ 0
tag @e[tag=this] remove this
tag @s remove target
