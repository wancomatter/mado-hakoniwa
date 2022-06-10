summon minecraft:area_effect_cloud 0.0 0.0 0.0 {Tags:["vector"],Duration:2}
execute unless score #difficult counter matches 2..4 as @e[tag=vector] facing entity @s feet rotated ~ 0 positioned as @s run tp @s ^ ^ ^1.0
execute if score #difficult counter matches 2 as @e[tag=vector] facing entity @s feet rotated ~ 0 positioned as @s run tp @s ^ ^ ^1.3
execute if score #difficult counter matches 3 as @e[tag=vector] facing entity @s feet rotated ~ 0 positioned as @s run tp @s ^ ^ ^1.6
execute if score #difficult counter matches 4 as @e[tag=vector] facing entity @s feet rotated ~ 0 positioned as @s run tp @s ^ ^ ^1.8

data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:dust 1 0.1 0.1 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force @a
particle minecraft:dust 1 0.1 0.1 1 ~ ~ ~ 0.5 0.5 0.5 0 40 normal @a
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 4 1

scoreboard players set @s counter 1000
scoreboard players operation @s counter -= @s subcounter2