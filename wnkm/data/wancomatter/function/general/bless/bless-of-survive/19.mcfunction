#対象デバフ: Poison
#対象デバフのId: 19

execute unless entity @s[tag=bless_of_survive2] at @s run summon minecraft:area_effect_cloud ~ ~0.2 ~ {Age:4,Duration:5,Effects:[{}],Radius:0.4f,Tags:["this","wnkm.owned","wnkm.round"],WaitTime:1,potion_contents:{custom_effects:[{}]},potion_duration_scale:0.25f}
execute unless entity @s[tag=bless_of_survive2] if data entity @s {active_effects:[{id:"minecraft:poison",ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:19,Ambient:0b}]
execute unless entity @s[tag=bless_of_survive2] if data entity @s {active_effects:[{id:"minecraft:poison",ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:19}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:19,Ambient:0b}].Duration 1
execute unless entity @s[tag=bless_of_survive2] if data entity @s {active_effects:[{id:"minecraft:poison",ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:19,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:19,Ambient:0b}].Amplifier

execute unless entity @s[tag=bless_of_survive2] run data modify entity @e[tag=this,limit=1] Effects[{Ambient:0b}].Ambient set value 1b
execute unless entity @s[tag=bless_of_survive2] run tag @e[tag=this] remove this
execute run effect clear @s minecraft:poison
