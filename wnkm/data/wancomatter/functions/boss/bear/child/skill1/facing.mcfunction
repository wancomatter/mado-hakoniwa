execute at @a[scores={maxHP=1..},limit=1,sort=nearest] run summon area_effect_cloud ~ ~1 ~ {Tags:["vector"],Duration:1}
execute unless score #difficult counter matches 3..4 if entity @e[tag=vector,limit=1] facing entity @e[tag=vector,limit=1,sort=nearest] feet positioned 0.0 0.0 0.0 run tp @e[tag=vector,limit=1] ^ ^ ^0.8 ~ ~
execute if score #difficult counter matches 3 if entity @e[tag=vector,limit=1] facing entity @e[tag=vector,limit=1,sort=nearest] feet positioned 0.0 0.0 0.0 run tp @e[tag=vector,limit=1] ^ ^ ^0.9 ~ ~
execute if score #difficult counter matches 4 if entity @e[tag=vector,limit=1] facing entity @e[tag=vector,limit=1,sort=nearest] feet positioned 0.0 0.0 0.0 run tp @e[tag=vector,limit=1] ^ ^ ^1.0 ~ ~
data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
data merge entity @s {NoGravity:1b}
particle minecraft:firework ~ ~ ~ 0 0 0 0.6 100 normal @a
particle minecraft:firework ~ ~ ~ 0 0 0 0.6 25 force @a
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.3 0.65