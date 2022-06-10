execute as @e[tag=dragon_move_target] if score @s playerNumber = @e[tag=dragon1_stand_body,limit=1,sort=nearest] playerNumber run tag @s add target
scoreboard players set #dragonBoss subcounter 0
execute if score #dragonBoss subcounter matches 0 positioned ^300 ^ ^ store success score #dragonBoss subcounter if entity @e[tag=target,distance=..299,limit=1] at @s run tp @s ~ ~ ~ ~-8 ~
execute if score #dragonBoss subcounter matches 0 positioned ^-300 ^ ^ store success score #dragonBoss subcounter if entity @e[tag=target,distance=..299,limit=1] at @s run tp @s ~ ~ ~ ~8 ~
execute if score #dragonBoss subcounter matches 0 positioned ^ ^ ^300 if entity @e[tag=target,distance=..299,limit=1] run scoreboard players set #dragonBoss subcounter -1
execute if score #dragonBoss subcounter matches 0 if score @s pageChange matches 1.. at @s run tp @s ~ ~ ~ ~8 ~
execute if score #dragonBoss subcounter matches 0 unless score @s pageChange matches 1.. at @s run tp @s ~ ~ ~ ~-8 ~


scoreboard players operation #dragonBoss counter = @s aviate
scoreboard players operation #dragonBoss counter /= #4 counter

execute if score #dragonBoss counter matches 128.. at @s run tp @s ^ ^ ^1.28
execute if score #dragonBoss counter matches 128.. run scoreboard players remove #dragonBoss counter 128
execute if score #dragonBoss counter matches 64.. at @s run tp @s ^ ^ ^0.64
execute if score #dragonBoss counter matches 64.. run scoreboard players remove #dragonBoss counter 64
execute if score #dragonBoss counter matches 32.. at @s run tp @s ^ ^ ^0.32
execute if score #dragonBoss counter matches 32.. run scoreboard players remove #dragonBoss counter 32
execute if score #dragonBoss counter matches 16.. at @s run tp @s ^ ^ ^0.16
execute if score #dragonBoss counter matches 16.. run scoreboard players remove #dragonBoss counter 16
execute if score #dragonBoss counter matches 8.. at @s run tp @s ^ ^ ^0.08
execute if score #dragonBoss counter matches 8.. run scoreboard players remove #dragonBoss counter 8
execute if score #dragonBoss counter matches 4.. at @s run tp @s ^ ^ ^0.04
execute if score #dragonBoss counter matches 4.. run scoreboard players remove #dragonBoss counter 4
execute if score #dragonBoss counter matches 2.. at @s run tp @s ^ ^ ^0.02
execute if score #dragonBoss counter matches 2.. run scoreboard players remove #dragonBoss counter 2
execute if score #dragonBoss counter matches 1.. at @s run tp @s ^ ^ ^0.01
execute if score #dragonBoss counter matches 1.. run scoreboard players remove #dragonBoss counter 1


execute if score #dragonBoss subcounter matches -1 run tag @s add target_distance
execute if score #dragonBoss subcounter matches -1 as @e[tag=target] at @s run tp @s ~ 15.0 ~
execute if score #dragonBoss subcounter matches -1 as @e[tag=target] at @s run function wancomatter:operation/distance
execute if score #dragonBoss subcounter matches -1 at @s facing entity @e[tag=target,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute if score #dragonBoss subcounter matches -1 run scoreboard players operation @s pageChange = @e[tag=target,limit=1] dummy
execute if score #dragonBoss subcounter matches -1 run scoreboard players operation @s pageChange *= #5 counter
execute if score #dragonBoss subcounter matches -1 run scoreboard players operation @s pageChange /= @s aviate
execute if score #dragonBoss subcounter matches -1 if entity @e[tag=target,tag=dragon_move_s3_x+,limit=1] run scoreboard players set @s Cooldown3_max 2
execute if score #dragonBoss subcounter matches -1 unless score @s Cooldown3_max matches 2 run scoreboard players set @s Cooldown3_max 3
tag @e[tag=target] remove target

