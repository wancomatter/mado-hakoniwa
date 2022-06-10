#対象デバフ: Slowness, Mining Fatigue, Nausea, Blindness, Weakness, Poison, Wither, Glowing, Unluck,
#対象デバフのId: 2, 4, 9, 15, 18, 19, 20, 24, 27
execute at @s run summon minecraft:area_effect_cloud ~ ~0.2 ~ {Tags:["this"],Radius:0.4f,Duration:5,Age:4,WaitTime:1,Effects:[{}]}
execute if data entity @s {ActiveEffects:[{Id:2,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:2,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:4,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:4,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:9,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:9,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:15,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:15,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:18,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:18,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:19,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:19,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:20,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:20,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:24,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:24,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:27,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:27,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:2,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:2}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:2,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:4,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:4}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:4,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:9,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:9}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:9,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:15,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:15}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:15,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:18,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:18}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:18,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:19,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:19}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:19,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:20,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:20}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:20,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:24,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:24}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:24,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:27,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:27}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:27,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:2,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:2,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:2,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:4,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:4,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:4,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:9,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:9,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:9,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:15,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:15,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:15,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:18,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:18,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:18,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:19,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:19,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:19,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:20,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:20,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:20,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:24,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:24,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:24,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:27,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:27,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:27,Ambient:0b}].Amplifier
data modify entity @e[tag=this,limit=1] Effects[{Ambient:0b}].Ambient set value 1b
execute if data entity @s {ActiveEffects:[{Id:2,Ambient:0b}]} run effect clear @s minecraft:slowness
execute if data entity @s {ActiveEffects:[{Id:4,Ambient:0b}]} run effect clear @s minecraft:mining_fatigue
execute if data entity @s {ActiveEffects:[{Id:9,Ambient:0b}]} run effect clear @s minecraft:nausea
execute if data entity @s {ActiveEffects:[{Id:15,Ambient:0b}]} run effect clear @s minecraft:blindness
execute if data entity @s {ActiveEffects:[{Id:18,Ambient:0b}]} run effect clear @s minecraft:weakness
execute if data entity @s {ActiveEffects:[{Id:19,Ambient:0b}]} run effect clear @s minecraft:poison
execute if data entity @s {ActiveEffects:[{Id:20,Ambient:0b}]} run effect clear @s minecraft:wither
execute if data entity @s {ActiveEffects:[{Id:24,Ambient:0b}]} run effect clear @s minecraft:glowing
execute if data entity @s {ActiveEffects:[{Id:27,Ambient:0b}]} run effect clear @s minecraft:unluck
tag @e[tag=this] remove this