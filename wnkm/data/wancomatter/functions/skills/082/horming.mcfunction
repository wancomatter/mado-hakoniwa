tag @s add now
execute as @e[distance=..10,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1,sort=nearest] teamNumber run tag @s add other_team
tag @s remove now
execute if entity @e[tag=other_team,limit=1] run function wancomatter:skills/082/select_target_1
execute if entity @e[tag=082flag,limit=1] facing entity @e[tag=082flag,limit=1] feet run tp @s ^ ^ ^0.4
execute if entity @e[tag=082flag,limit=1] run tag @e[tag=082flag] remove 082flag
playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 0.5
scoreboard players set @s subcounter 0
