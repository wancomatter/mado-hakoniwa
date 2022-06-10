scoreboard players add #dummy dummy 1
execute positioned 0.0 0.8 0.0 rotated ~ 0 run summon armor_stand ^ ^ ^2.25 {Tags:["b1s21stand"],Marker:1b,Invisible:1b,NoGravity:1b}
execute unless score #difficult counter matches 4 rotated ~ 0 run summon minecraft:creeper ~ ~ ~ {CustomName:'"デトネーションストーム"',Tags:["b1s9creeper","b1s21first","mob","mobInit","b1s21creeper"],powered:1b,ExplosionRadius:2b,Fuse:60s,ignited:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:1000f}
execute if score #difficult counter matches 4 rotated ~ 0 run summon minecraft:creeper ~ ~ ~ {CustomName:'"デトネーションストーム"',Tags:["b1s9creeper","b1s21first","mob","mobInit","b1s21creeper"],powered:1b,ExplosionRadius:3b,Fuse:50s,ignited:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:1000f}
data modify entity @e[tag=b1s21first,limit=1] Motion set from entity @e[tag=b1s21stand,limit=1] Pos
tag @e[tag=b1s21first] remove b1s21first
kill @e[tag=b1s21stand]
execute if score #dummy dummy matches 1..23 rotated ~15 0 run function wancomatter:boss/detonator/skill21/bomb_around2