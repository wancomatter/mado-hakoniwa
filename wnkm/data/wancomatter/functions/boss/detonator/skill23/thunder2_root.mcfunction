execute positioned ~14 ~ ~ run summon armor_stand ~ ~ ~ {Tags:["b1s23stand"],Marker:1b,Invisible:1b,NoGravity:1b}
execute positioned ~-14 ~ ~ run summon armor_stand ~ ~ ~ {Tags:["b1s23stand"],Marker:1b,Invisible:1b,NoGravity:1b}
execute positioned ~ ~ ~14 run summon armor_stand ~ ~ ~ {Tags:["b1s23stand"],Marker:1b,Invisible:1b,NoGravity:1b}
execute positioned ~ ~ ~-14 run summon armor_stand ~ ~ ~ {Tags:["b1s23stand"],Marker:1b,Invisible:1b,NoGravity:1b}
execute as @a[scores={maxHP=1..}] run function wancomatter:boss/detonator/skill23/thunder2
kill @e[tag=b1s23stand]
playsound minecraft:entity.wither.shoot master @a 0 -30 0 0 2 1