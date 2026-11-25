summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10,Passengers:[{DeathTime:19,Invulnerable:1b,Silent:1b,Size:5,Tags:["b3s6slime","wnkm.owned","wnkm.round"],active_effects:[{amplifier:127b,duration:2000000,id:"minecraft:invisibility"}],id:"minecraft:slime"},{DeathTime:19,Invulnerable:1b,Silent:1b,Size:5,Tags:["b3s6slime","wnkm.owned","wnkm.round"],active_effects:[{amplifier:127b,duration:2000000,id:"minecraft:invisibility"}],id:"minecraft:slime"},{DeathTime:19,Invulnerable:1b,Silent:1b,Size:5,Tags:["b3s6slime","wnkm.owned","wnkm.round"],active_effects:[{amplifier:127b,duration:2000000,id:"minecraft:invisibility"}],id:"minecraft:slime"},{DeathTime:19,Invulnerable:1b,Silent:1b,Size:5,Tags:["b3s6slime","wnkm.owned","wnkm.round"],active_effects:[{amplifier:127b,duration:2000000,id:"minecraft:invisibility"}],id:"minecraft:slime"}],potion_duration_scale:0.25f,Tags:["wnkm.owned","wnkm.round"]}
effect give @s minecraft:levitation 1 10 true
scoreboard players set @s levitateOperate 3

data merge storage wnkm:storage_damage {Damage:8.0f,WeaponNumber:-46,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=dusk,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 10.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 12.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 16.0f
function wancomatter:general/damagetaken/storage_damage
tag @s remove hit
