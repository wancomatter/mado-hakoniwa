#対象デバフ: Slowness
#対象デバフのId: 2
execute at @s run summon minecraft:area_effect_cloud ~ ~0.2 ~ {Age:4,Duration:5,Effects:[{}],Radius:0.4f,Tags:["this","wnkm.owned","wnkm.round"],WaitTime:1,potion_contents:{custom_effects:[{}]},potion_duration_scale:0.25f}
execute if data entity @s {active_effects:[{id:"minecraft:slowness",ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:2,Ambient:0b}]
execute unless entity @s[tag=lightarm] if data entity @s {active_effects:[{id:"minecraft:slowness",ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:2}].Duration int 1 run data get entity @s ActiveEffects[{Id:2,Ambient:0b}].Duration 1
execute if entity @s[tag=lightarm] if data entity @s {active_effects:[{id:"minecraft:slowness",ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:2}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:2,Ambient:0b}].Duration 1
execute unless entity @s[tag=bear_legs] if data entity @s {active_effects:[{id:"minecraft:slowness",ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:2,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:2,Ambient:0b}].Amplifier
execute if entity @s[tag=bear_legs] if data entity @s {active_effects:[{id:"minecraft:slowness",ambient:0b,amplifier:0}]} run kill @e[tag=this]
execute if entity @s[tag=bear_legs] if data entity @s {active_effects:[{id:"minecraft:slowness",ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:2,Ambient:0b}].Amplifier byte 0.99999999 run data get entity @s ActiveEffects[{Id:2,Ambient:0b}].Amplifier
data modify entity @e[tag=this,limit=1] Effects[{Ambient:0b}].Ambient set value 1b
execute if data entity @s {active_effects:[{id:"minecraft:slowness",ambient:0b}]} run effect clear @s minecraft:slowness
tag @e[tag=this] remove this
