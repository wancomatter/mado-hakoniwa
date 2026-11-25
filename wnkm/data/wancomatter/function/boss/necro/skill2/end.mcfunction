summon area_effect_cloud ~ ~ ~ {Age:4,Duration:5,Particle:"minecraft:explosion",Radius:3.0f,WaitTime:1,custom_particle:{type:"minecraft:explosion"},potion_duration_scale:0.25f,Tags:["wnkm.owned","wnkm.round"],CustomName:{color:"dark_gray",italic:0b,text:"スケルトンホース・メリーゴーランド"}}
playsound entity.generic.explode master @a ~ ~ ~ 2 0.5

execute as @e[scores={maxHP=1..},distance=..3.3] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
data merge storage wnkm:storage_damage {Damage:6.0f,WeaponNumber:-62,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=necro,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 8.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 12.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 18.0f
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit

kill @s
