execute facing entity @e[tag=102target2,limit=1,sort=nearest] feet rotated ~ 0 positioned 0.0 0.5 0.0 run summon area_effect_cloud ^ ^ ^1.1 {Duration:1,Tags:["102vector"]}
data modify entity @s Motion set from entity @e[tag=102vector,limit=1] Pos
kill @e[tag=102vector,limit=1]
scoreboard players set @s counter 130
scoreboard players set @s Cooldown1 0
scoreboard players set @s Cooldown2 40
tag @e[tag=102target2] remove 102target2


playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.2 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 1.2
particle minecraft:cloud ^ ^1 ^1 0.1 0.1 0.1 0.5 200 normal @a
particle minecraft:cloud ^ ^1 ^1 0.1 0.1 0.1 0.5 50 force @a
