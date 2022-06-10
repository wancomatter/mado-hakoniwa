playsound minecraft:block.anvil.use master @a ~ ~ ~ 1.2 2
execute at @e[tag=bomb-command] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1.2 2
execute at @e[tag=bomb-command,nbt=!{powered:1b}] as @e[distance=..6.0,scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber unless score @s playerNumber = #dummy playerNumber run function wancomatter:skills/arrow/06/instant_damage_shield
execute at @e[tag=bomb-command,nbt=!{powered:1b}] as @e[distance=..6.0,scores={maxHP=1..},tag=!explosion_instant_damage_shield] run tag @s add bomb-hit
execute at @e[tag=bomb-command,nbt={powered:1b}] as @e[distance=..12.0,scores={maxHP=1..}] if score @s teamNumber = #dummy teamNumber unless score @s playerNumber = #dummy playerNumber run function wancomatter:skills/arrow/06/instant_damage_shield
execute at @e[tag=bomb-command,nbt={powered:1b}] as @e[distance=..12.0,scores={maxHP=1..},tag=!explosion_instant_damage_shield] run tag @s add bomb-hit
tag @e[tag=explosion_instant_damage_shield] remove explosion_instant_damage_shield
execute if entity @e[tag=bomb-hit,limit=1] as @e[tag=bomb-hit] unless entity @s[type=player,gamemode=spectator] at @s run function wancomatter:skills/030/hit-entity
execute as @e[tag=bomb-command] run data merge entity @s {Fuse:0s}
tag @s add failed
