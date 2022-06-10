execute as @e[tag=dragon_move_target] if score @s playerNumber = @e[tag=dragon1_stand_body,limit=1,sort=nearest] playerNumber run tag @s add target
scoreboard players set #dragonBoss subcounter -2
execute if entity @e[tag=target,tag=!dragon_move_target_set_rotation,limit=1] run scoreboard players set #dragonBoss subcounter 0
execute if score #dragonBoss subcounter matches 0 positioned ^300 ^ ^ store success score #dragonBoss subcounter if entity @e[tag=target,distance=..299,limit=1] at @s run tp @s ^ ^ ^ ~-4 ~
execute if score #dragonBoss subcounter matches 0 positioned ^-300 ^ ^ store success score #dragonBoss subcounter if entity @e[tag=target,distance=..299,limit=1] at @s run tp @s ^ ^ ^ ~4 ~
execute if score #dragonBoss subcounter matches 0 positioned ^ ^ ^300 if entity @e[tag=target,distance=..299,limit=1] run scoreboard players set #dragonBoss subcounter -1
#execute if score #dragonBoss subcounter matches 0 run playsound entity.villager.hurt master @a ~ ~-100 ~ 0 1 0.2
execute if score #dragonBoss subcounter matches 0 if score @s pageChange matches 1.. at @s run tp @s ~ ~ ~ ~4 ~
execute if score #dragonBoss subcounter matches 0 unless score @s pageChange matches 1.. at @s run tp @s ~ ~ ~ ~-4 ~
execute if score #dragonBoss subcounter matches -1 run tag @s add target_distance
execute if score #dragonBoss subcounter matches -1 as @e[tag=target] at @s run function wancomatter:operation/distance
execute if score #dragonBoss subcounter matches -1 run scoreboard players operation @s page = @e[tag=target,limit=1] dummy
execute if score #dragonBoss subcounter matches -1 run scoreboard players operation @s page *= #10 counter
execute if score #dragonBoss subcounter matches -1 run scoreboard players operation @s page /= @s aviate
execute if score #dragonBoss subcounter matches -1 if entity @e[tag=target,tag=!dragon_move_target_set_rotation,limit=1] run tag @e[tag=target,tag=!dragon_move_target_set_rotation] add dragon_move_target_set_rotation
tag @e[tag=target] remove target

scoreboard players remove @s page 1
scoreboard players operation #dragonBoss counter = @s aviate
#execute if score @s pageChange matches 0 run tellraw wnkm {"score":{"name":"@s","objective":"pageChange"}}
execute unless score #dragonBoss subcounter matches -2 run scoreboard players operation #dragonBoss counter *= #5 counter
execute unless score #dragonBoss subcounter matches -2 run scoreboard players operation #dragonBoss counter /= #6 counter

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