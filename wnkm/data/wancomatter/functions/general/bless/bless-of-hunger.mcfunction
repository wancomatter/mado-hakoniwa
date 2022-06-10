#対象デバフ: Unluck
#対象デバフのId: 27
execute at @s run summon minecraft:area_effect_cloud ~ ~0.2 ~ {Tags:["this"],Radius:0.4f,Duration:5,Age:4,WaitTime:1,Effects:[{}]}
execute if data entity @s {ActiveEffects:[{Id:27b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:27b,Ambient:0b}]
execute unless entity @s[tag=bless_of_hunger2] if data entity @s {ActiveEffects:[{Id:27b,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:27b}].Duration int 0.666667 run data get entity @s ActiveEffects[{Id:27b,Ambient:0b}].Duration 1
execute if entity @s[tag=bless_of_hunger2] if data entity @s {ActiveEffects:[{Id:27b,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:27b}].Duration int 0.444444 run data get entity @s ActiveEffects[{Id:27b,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:27b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:27b,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:27b,Ambient:0b}].Amplifier
execute run data modify entity @e[tag=this,limit=1] Effects[{Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:20,Ambient:0b}].Amplifier
execute run data modify entity @e[tag=this,limit=1] Effects[{Ambient:0b}].Ambient set value 1b
execute if data entity @s {ActiveEffects:[{Id:27b,Ambient:0b}]} run effect clear @s minecraft:unluck
tag @e[tag=this] remove this