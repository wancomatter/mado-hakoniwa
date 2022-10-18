execute if entity @s[tag=zombie_sound] run playsound entity.zombie.death hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=skeleton_sound] run playsound entity.skeleton.death hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=wither_skeleton_sound] run playsound entity.wither_skeleton.death hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=shulker_sound] run playsound entity.shulker.death hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=phantom_sound] run playsound entity.phantom.death hostile @a ~ ~ ~ 1 1

scoreboard players reset @s maxHP
tag @s add kill