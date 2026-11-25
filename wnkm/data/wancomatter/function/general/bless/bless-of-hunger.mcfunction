#対象デバフ: Unluck
#対象デバフのId: 27
execute at @s run summon minecraft:area_effect_cloud ~ ~0.2 ~ {Age:4,Duration:5,Effects:[{}],Radius:0.4f,Tags:["this","wnkm.owned","wnkm.round"],WaitTime:1,potion_contents:{custom_effects:[{}]},potion_duration_scale:0.25f}
execute if data entity @s {active_effects:[{id:"minecraft:unluck",ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:27,Ambient:0b}]
execute unless entity @s[tag=bless_of_hunger2] if data entity @s {active_effects:[{id:"minecraft:unluck",ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:27}].Duration int 0.666667 run data get entity @s ActiveEffects[{Id:27,Ambient:0b}].Duration 1
execute if entity @s[tag=bless_of_hunger2] if data entity @s {active_effects:[{id:"minecraft:unluck",ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:27}].Duration int 0.444444 run data get entity @s ActiveEffects[{Id:27,Ambient:0b}].Duration 1
execute if data entity @s {active_effects:[{id:"minecraft:unluck",ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:27,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:27,Ambient:0b}].Amplifier
execute run data modify entity @e[tag=this,limit=1] Effects[{Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:20,Ambient:0b}].Amplifier
execute run data modify entity @e[tag=this,limit=1] Effects[{Ambient:0b}].Ambient set value 1b
execute if data entity @s {active_effects:[{id:"minecraft:unluck",ambient:0b}]} run effect clear @s minecraft:unluck
tag @e[tag=this] remove this
