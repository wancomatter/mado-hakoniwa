scoreboard players add @s subcounter 1
particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.03 1 normal @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.03 1 force @a
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now-Braze,limit=1] teamNumber positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run tag @s add Braze-hit
execute unless block ^ ^ ^0.3 #wancomatter:air run scoreboard players set @s subcounter 1000
execute unless score @s subcounter matches 77.. positioned ^ ^ ^0.3 run function wancomatter:skills/017/launch