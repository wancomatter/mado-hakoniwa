summon minecraft:armor_stand ~ ~0.1 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this","bear_plant","wnkm.owned","wnkm.round"]}
execute positioned ~ ~0.1 ~ run tp @e[tag=this,limit=1] ~ ~ ~ ~ 0
tag @e[tag=this] remove this
tag @s remove target
