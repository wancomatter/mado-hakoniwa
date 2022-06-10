execute unless score #difficult counter matches 4 rotated ~ 0 run summon minecraft:creeper ~ ~ ~ {CustomName:'"デトネーションストーム"',Motion:[0.0d,0.8d,1.0d],Tags:["b1s9creeper","b1s21first","mob","mobInit","b1s21creeper"],powered:1b,ExplosionRadius:2b,Fuse:40s,ignited:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:1000f}
execute if score #difficult counter matches 4 rotated ~ 0 run summon minecraft:creeper ~ ~ ~ {CustomName:'"デトネーションストーム"',Motion:[0.0d,0.8d,1.0d],Tags:["b1s9creeper","b1s21first","mob","mobInit","b1s21creeper"],powered:1b,ExplosionRadius:3b,Fuse:40s,ignited:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:1000f}
execute store result score #dummy Cooldown2 run data get entity @s Pos[0] 9.5
execute as @e[tag=b1s21first] store result entity @s Motion[0] double 0.01 run scoreboard players operation #dummy Cooldown2 -= #dummy Cooldown1
execute store result score #dummy Cooldown4 run data get entity @s Pos[2] 9.5
execute as @e[tag=b1s21first] store result entity @s Motion[2] double 0.01 run scoreboard players operation #dummy Cooldown4 -= #dummy Cooldown3
tag @e[tag=b1s21first] remove b1s21first
