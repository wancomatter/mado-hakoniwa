execute at @e[tag=bear_p] positioned ~-50 ~ ~-50 as @a[scores={maxHP=1..},dx=100,dy=1,dz=100] run tag @s add target
scoreboard players set #dummy counter 0
scoreboard players add @a[tag=target] boss_hate 0
execute at @e[tag=bear_p] align y if entity @a[tag=target,limit=1] run function wancomatter:boss/bear/papa/skill4/loop
tag @a[tag=target] remove target
scoreboard players reset #dummy
