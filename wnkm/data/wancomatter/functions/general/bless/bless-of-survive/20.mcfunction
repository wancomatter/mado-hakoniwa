#対象デバフ: Wither
#対象デバフのId: 20

execute unless entity @s[tag=bless_of_survive2] at @s run summon minecraft:area_effect_cloud ~ ~0.2 ~ {Tags:["this"],Radius:0.4f,Duration:5,Age:4,WaitTime:1,Effects:[{}]}
execute unless entity @s[tag=bless_of_survive2] if data entity @s {ActiveEffects:[{Id:20b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:20b,Ambient:0b}]
execute unless entity @s[tag=bless_of_survive2] if data entity @s {ActiveEffects:[{Id:20b,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:20b}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:20b,Ambient:0b}].Duration 1
execute unless entity @s[tag=bless_of_survive2] if data entity @s {ActiveEffects:[{Id:20b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:20b,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:20b,Ambient:0b}].Amplifier

execute unless entity @s[tag=bless_of_survive2] run data modify entity @e[tag=this,limit=1] Effects[{Ambient:0b}].Ambient set value 1b
execute unless entity @s[tag=bless_of_survive2] run tag @e[tag=this] remove this
execute run effect clear @s minecraft:wither
