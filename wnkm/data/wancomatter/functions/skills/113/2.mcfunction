execute if entity @s[tag=109stream1] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.7
execute if entity @s[tag=109stream2] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.5
execute if entity @s[tag=109stream2] run particle minecraft:crit ~ ~ ~ 1 1 1 1 10 force @a
execute if entity @s[tag=109stream2] run particle minecraft:crit ~ ~ ~ 1 1 1 1 40 normal @a
execute if entity @s[tag=109stream3] run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1.2 0.9
execute if entity @s[tag=109stream3] run particle minecraft:explosion ~ ~ ~ 0.4 0.4 0.4 1 2 force @a
execute if entity @s[tag=109stream3] run particle minecraft:explosion ~ ~ ~ 0.4 0.4 0.4 1 8 normal @a
execute if entity @s[tag=109stream4] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1.2 1.5
execute if entity @s[tag=109stream4] run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 1 20 force @a
execute if entity @s[tag=109stream4] run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 1 80 normal @a
execute if entity @s[tag=109stream5] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.6
execute if entity @s[tag=109stream5] run playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 1.2 0.5
execute if entity @s[tag=109stream5] run particle minecraft:sweep_attack ~ ~ ~ 0.4 0.4 0.4 1 8 force @a
execute if entity @s[tag=109stream5] run particle minecraft:sweep_attack ~ ~ ~ 0.4 0.4 0.4 1 32 normal @a
execute if entity @s[tag=109stream6] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 2
execute if entity @s[tag=109stream6] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1.2 2
execute if entity @s[tag=109stream6] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.5 0.5 1 100 normal @a
execute if entity @s[tag=109stream6] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.5 0.5 1 25 force @a

execute if entity @s[tag=109stream7] run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 12 force @a
execute if entity @s[tag=109stream7] run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 48 normal @a
execute if entity @s[tag=109stream7] run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 1 40 force @a
execute if entity @s[tag=109stream7] run particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 1 160 normal @a
execute if entity @s[tag=109stream7] run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1.2 2
execute if entity @s[tag=109stream7] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 1
execute if entity @s[tag=109stream7] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 1
execute if entity @s[tag=109stream7] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.5
execute if entity @s[tag=109stream7] run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.2 0.5

execute store result score @s subcounter2 run data get entity @s Effects[{Id:9}].Amplifier 2
data remove entity @s Effects[{Id:9}]
execute if entity @s[tag=109stream,tag=!109stream3,tag=!109stream6,tag=!109stream7] as @e[distance=..2.0,scores={maxHP=1..}] unless score @s teamNumber = @a[tag=user,limit=1,sort=nearest] teamNumber run tag @s add hit
execute if entity @s[tag=109stream,tag=109stream3] as @e[distance=..2.5,scores={maxHP=1..}] unless score @s teamNumber = @a[tag=user,limit=1,sort=nearest] teamNumber run tag @s add hit
execute if entity @s[tag=109stream,tag=109stream6] as @e[distance=..2.5,scores={maxHP=1..}] unless score @s teamNumber = @a[tag=user,limit=1,sort=nearest] teamNumber run tag @s add hit
execute if entity @s[tag=109stream,tag=109stream7] as @e[distance=..4.0,scores={maxHP=1..}] unless score @s teamNumber = @a[tag=user,limit=1,sort=nearest] teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/113/hit

tag @s remove 109stream
execute if entity @s[tag=109stream1] run tag @s remove 109stream1
execute if entity @s[tag=109stream2] run tag @s remove 109stream2
execute if entity @s[tag=109stream3] run tag @s remove 109stream3
execute if entity @s[tag=109stream4] run tag @s remove 109stream4
execute if entity @s[tag=109stream5] run tag @s remove 109stream5
execute if entity @s[tag=109stream6] run tag @s remove 109stream6
execute if entity @s[tag=109stream7] run tag @s remove 109stream7

