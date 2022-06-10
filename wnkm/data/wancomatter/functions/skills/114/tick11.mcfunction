scoreboard players set #dummy counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
function wancomatter:skills/114/loop
scoreboard players set #dummy counter 1
execute rotated ~-15 ~ run function wancomatter:skills/114/loop
scoreboard players set #dummy counter 1
execute rotated ~-30 ~ run function wancomatter:skills/114/loop
execute if entity @e[tag=hit2] as @e[tag=hit2] at @s run function wancomatter:skills/114/hit-entity
particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000001 0 force
particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000002 0 force
particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000003 0 force
particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000004 0 force
particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000005 0 force
particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000006 0 force
execute rotated ~-15 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000001 0 force
execute rotated ~-15 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000002 0 force
execute rotated ~-15 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000003 0 force
execute rotated ~-15 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000004 0 force
execute rotated ~-15 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000005 0 force
execute rotated ~-15 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000006 0 force
execute rotated ~-30 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000001 0 force
execute rotated ~-30 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000002 0 force
execute rotated ~-30 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000003 0 force
execute rotated ~-30 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000004 0 force
execute rotated ~-30 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000005 0 force
execute rotated ~-30 ~ run particle minecraft:dragon_breath ~ ~ ~ ^ ^ ^100000 0.000006 0 force
execute rotated ~-15 ~ run playsound minecraft:entity.player.attack.sweep master @a ^ ^ ^2 1.2 0.5

tag @e[tag=hitx] remove hitx
execute rotated ~-45 ~ run tp @s ~ ~ ~ ~ ~
