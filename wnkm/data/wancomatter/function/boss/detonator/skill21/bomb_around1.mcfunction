scoreboard players add #dummy dummy 1
execute positioned 0.0 0.8 0.0 rotated ~ 0 run summon armor_stand ^ ^ ^1 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["b1s21stand","wnkm.owned","wnkm.round"]}
execute unless score #difficult counter matches 4 rotated ~ 0 run summon minecraft:creeper ~ ~ ~ {AbsorptionAmount:1000.0f,ExplosionRadius:2b,Fuse:60s,Health:1000.0f,Tags:["b1s9creeper","b1s21first","mob","mobInit","b1s21creeper","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"}],ignited:1b,powered:1b,CustomName:"デトネーションストーム"}
execute if score #difficult counter matches 4 rotated ~ 0 run summon minecraft:creeper ~ ~ ~ {AbsorptionAmount:1000.0f,ExplosionRadius:3b,Fuse:50s,Health:1000.0f,Tags:["b1s9creeper","b1s21first","mob","mobInit","b1s21creeper","wnkm.owned","wnkm.round"],attributes:[{base:1000.0d,id:"minecraft:max_health"}],ignited:1b,powered:1b,CustomName:"デトネーションストーム"}
data modify entity @e[tag=b1s21first,limit=1] Motion set from entity @e[tag=b1s21stand,limit=1] Pos
tag @e[tag=b1s21first] remove b1s21first
kill @e[tag=b1s21stand]
execute if score #dummy dummy matches 1..23 rotated ~15 0 run function wancomatter:boss/detonator/skill21/bomb_around1
