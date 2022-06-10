scoreboard players add @s subcounter 1
execute if score @s subcounter matches 40.. run scoreboard players add @s HPheal 10
execute if score @s subcounter matches 40.. run scoreboard players set @s subcounter 1


execute unless score @s counter matches 140.. run scoreboard players add @s counter 1
execute if score @s counter matches 80 run function wancomatter:skills/079/startup

scoreboard players operation #dummy playerNumber = @s ownerNumber
execute as @a[tag=p.snow_golem] if score #dummy playerNumber = @s playerNumber run tag @s add owner
execute if score @s HP matches 151.. run particle minecraft:dust 0 1 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=owner]
execute if score @s HP matches 101..150 run particle minecraft:dust 1 1 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=owner]
execute if score @s HP matches 51..100 run particle minecraft:dust 1 0.5 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=owner]
execute if score @s HP matches ..50 run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 1 1 1 1 1 force @a[tag=owner]

execute if entity @s[tag=079walked] unless entity @a[tag=owner,limit=1,distance=..3.3] rotated ~ 0 unless block ^ ^ ^0.4 #wancomatter:air run function wancomatter:skills/079/jump_check
execute if entity @s[tag=079walked] run tag @s remove 079walked
execute if entity @s[nbt={HurtTime:0s}] unless entity @a[tag=owner,limit=1,distance=..3.3] run function wancomatter:skills/079/walk

execute if score @s counter matches 81.. run particle witch ~ ~0.5 ~ 0.3 0.3 0.3 0 1 force @a
execute if score @s counter matches 81.. run particle witch ~ ~0.5 ~ 0.3 0.3 0.3 0 3 normal @a
tag @s add it
execute if score @s counter matches 140 unless entity @s[tag=focus_entity] positioned ^ ^ ^4 if entity @e[limit=1,scores={maxHP=1..},distance=..10,tag=!projectile_wall] as @e[scores={maxHP=1..},distance=..10,tag=!projectile_wall] unless score @s teamNumber = @e[tag=it,limit=1,sort=nearest] teamNumber run tag @e[tag=it,limit=1,sort=nearest] add focus_entity
tag @s remove it
execute if score @s counter matches 141.. run tag @s add focus_entity
execute if entity @s[tag=focus_entity] run function wancomatter:skills/079/attack
execute if score @s counter matches 146.. run scoreboard players set @s counter 95

execute if entity @a[tag=owner,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["079Rotation"],Duration:1}
execute if entity @a[tag=owner,limit=1] at @s facing entity @a[tag=owner,limit=1,sort=nearest] feet run tp @e[tag=079Rotation] ~ ~ ~ ~ 0
execute if entity @a[tag=owner,limit=1] run data modify entity @s Rotation[0] set from entity @e[tag=079Rotation,limit=1,sort=nearest] Rotation[0]

scoreboard players reset #dummy
tag @a[tag=owner] remove owner
