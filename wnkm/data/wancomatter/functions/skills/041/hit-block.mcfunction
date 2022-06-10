tp @s ~ ~ ~
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s run tag @s add hmissile-b-hit
execute as @e[distance=..4.0,scores={maxHP=1..}] if score @s playerNumber = #dummy playerNumber at @s run tag @s add hmissile-b-hit
execute if entity @e[tag=hmissile-b-hit,limit=1] store result score #dummy Cooldown1_max run data get entity @s Pos[0] 10
execute if entity @e[tag=hmissile-b-hit,limit=1] store result score #dummy Cooldown2_max run data get entity @s Pos[1] 10
execute if entity @e[tag=hmissile-b-hit,limit=1] store result score #dummy Cooldown3_max run data get entity @s Pos[2] 10
execute if entity @e[tag=hmissile-b-hit,limit=1] run tag @s add this
execute if entity @e[tag=hmissile-b-hit,limit=1] as @a if score @s playerNumber = #dummy playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 0 0.5 0.6
execute if entity @e[tag=hmissile-b-hit,limit=1] as @e[tag=hmissile-b-hit] at @s run function wancomatter:skills/041/hit-entity-b
tag @s remove this
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 0.8
scoreboard players set @s counter 81