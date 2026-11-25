particle minecraft:explosion ~ ~0.4 ~ 0.4 0.4 0.4 1 4 normal @a
particle minecraft:explosion ~ ~0.4 ~ 0 0 0 1 1 force @a
particle item{item:"minecraft:coal_block"} ~ ~ ~ 0.5 0.5 0.5 0.5 160 normal @a
particle item{item:"minecraft:coal_block"} ~ ~ ~ 0.5 0.5 0.5 0.5 40 force @a
playsound entity.generic.explode master @a ~ ~ ~ 0.8 2

execute facing entity @e[tag=necro] feet run tp @s ~ ~ ~ ~ ~
tag @s add necro_s6_return_spirit
summon area_effect_cloud ~ ~ ~ {Duration:500,Tags:["necro_s6_random_target_AEC","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
