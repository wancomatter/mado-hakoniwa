execute positioned 0.0 0.6 0.0 rotated as @s rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^2.4 {Tags:["discharge"],NoGravity:1b,Marker:1b,Invisible:1b}
data modify entity @s Motion set from entity @e[tag=discharge,limit=1] Pos
kill @e[tag=discharge]
particle minecraft:poof ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:poof ~ ~ ~ 1 1 1 1 25 force @a
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 3 1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 3 1
execute if score #difficult counter matches 4 run schedule function wancomatter:boss/detonator/skill0-add 15t