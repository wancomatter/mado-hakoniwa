scoreboard players add @s subcounter 1
particle flame ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @e[distance=..1.2,tag=discharge2] positioned ^ ^ ^0.4 run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 2 0.5
execute unless score @s subcounter matches 120.. unless entity @e[distance=..1.2,tag=discharge2] positioned ^ ^ ^0.4 run function wancomatter:boss/detonator/skill2/distance