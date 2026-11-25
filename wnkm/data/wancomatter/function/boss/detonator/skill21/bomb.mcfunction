execute unless score #difficult counter matches 4 rotated ~ 0 run summon minecraft:creeper ~ ~ ~ {AbsorptionAmount:1000.0f,ExplosionRadius:2b,Fuse:40s,Health:1000.0f,Motion:[0.0d,0.8d,1.0d],Tags:["b1s9creeper","b1s21first","mob","mobInit","b1s21creeper","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"}],ignited:1b,powered:1b,CustomName:"デトネーションストーム"}
execute if score #difficult counter matches 4 rotated ~ 0 run summon minecraft:creeper ~ ~ ~ {AbsorptionAmount:1000.0f,ExplosionRadius:3b,Fuse:40s,Health:1000.0f,Motion:[0.0d,0.8d,1.0d],Tags:["b1s9creeper","b1s21first","mob","mobInit","b1s21creeper","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"}],ignited:1b,powered:1b,CustomName:"デトネーションストーム"}
execute store result score #dummy Cooldown2 run data get entity @s Pos[0] 9.5
execute as @e[tag=b1s21first] store result entity @s Motion[0] double 0.01 run scoreboard players operation #dummy Cooldown2 -= #dummy Cooldown1
execute store result score #dummy Cooldown4 run data get entity @s Pos[2] 9.5
execute as @e[tag=b1s21first] store result entity @s Motion[2] double 0.01 run scoreboard players operation #dummy Cooldown4 -= #dummy Cooldown3
tag @e[tag=b1s21first] remove b1s21first
