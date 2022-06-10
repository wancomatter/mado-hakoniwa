playsound minecraft:entity.blaze.death master @a ~ ~ ~ 5.5 0.5
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 4 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5 1.6
particle minecraft:cloud ~ ~ ~ 0 0 0 0.3 200 normal @a
particle minecraft:cloud ~ ~ ~ 0 0 0 0.3 100 force @a
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a

execute as @a[scores={maxHP=1..},distance=..99] run scoreboard players operation #dummy boss_hate > @s boss_hate
execute as @a[scores={maxHP=1..},distance=..99] if score @s boss_hate >= #dummy boss_hate at @s run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["target"]}

execute store result score #dummy Cooldown1 run data get entity @s Pos[0] 10
execute store result score #dummy Cooldown2 run data get entity @e[tag=target,limit=1,sort=nearest] Pos[0] 10
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation #dummy Cooldown2 -= #dummy Cooldown1
execute store result score #dummy Cooldown3 run data get entity @s Pos[2] 10
execute store result score #dummy Cooldown4 run data get entity @e[tag=target,limit=1,sort=nearest] Pos[2] 10
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation #dummy Cooldown4 -= #dummy Cooldown3
data modify entity @s Motion[1] set value 0.6d
execute if score @s Cooldown4_max matches 1 run scoreboard players operation @s dummy = @s Cooldown2
execute if score @s Cooldown4_max matches 1 run function wancomatter:boss/dusk/skill2/first
execute if score @s Cooldown4_max matches 1 run scoreboard players operation @s Cooldown2 = @s dummy

execute if score #difficult counter matches 3 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.0d,-0.1d,0.0d],ExplosionPower:2,Tags:["b3blaze_crash_fireball"]}
execute unless score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.1d,-0.1d,0.0d],ExplosionPower:2,Tags:["b3blaze_crash_fireball"]}
execute unless score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[-0.1d,-0.1d,0.0d],ExplosionPower:2,Tags:["b3blaze_crash_fireball"]}
execute unless score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.0d,-0.1d,0.1d],ExplosionPower:2,Tags:["b3blaze_crash_fireball"]}
execute unless score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.0d,-0.1d,-0.1d],ExplosionPower:2,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 2..3 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.0707d,-0.1d,0.0707d],ExplosionPower:2,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 2..3 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[-0.0707d,-0.1d,0.0707d],ExplosionPower:2,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 2..3 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[-0.0707d,-0.1d,-0.0707d],ExplosionPower:2,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 2..3 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.0707d,-0.1d,-0.0707d],ExplosionPower:2,Tags:["b3blaze_crash_fireball"]}

execute if score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.0d,-0.1d,0.0d],ExplosionPower:3,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.1d,-0.1d,0.0d],ExplosionPower:3,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[-0.1d,-0.1d,0.0d],ExplosionPower:3,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.0d,-0.1d,0.1d],ExplosionPower:3,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.0d,-0.1d,-0.1d],ExplosionPower:3,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.0707d,-0.1d,0.0707d],ExplosionPower:3,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[-0.0707d,-0.1d,0.0707d],ExplosionPower:3,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[-0.0707d,-0.1d,-0.0707d],ExplosionPower:3,Tags:["b3blaze_crash_fireball"]}
execute if score #difficult counter matches 4 run summon minecraft:fireball ~ ~-1 ~ {Motion:[0.0d,0.0d,0.0d],power:[0.0707d,-0.1d,-0.0707d],ExplosionPower:3,Tags:["b3blaze_crash_fireball"]}

kill @e[tag=target]