execute at @e[tag=necro_s12AEC] run summon lightning_bolt ~ ~ ~
execute at @e[tag=necro_s12AEC] run summon lightning_bolt ~ ~ ~
execute at @e[tag=necro_s12AEC] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 0.65

execute unless score #difficult counter matches 2..4 at @e[tag=necro_s12AEC] run summon skeleton_horse ~ ~ ~ {Tags:["mob","mobInit","undead","necro_s12entity"],Team:"Purple",AbsorptionAmount:132f,Health:1000f,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Tags:["mob","mobInit","undead","necro_s12entity"],Team:"Purple",AbsorptionAmount:88f,Health:1000f,HandDropChances:[-100f,-100f],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s},{id:"minecraft:punch",lvl:1s}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:32,Amplifier:3b,Duration:2}],CustomPotionColor:11141294}}],Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.follow_range",Base:30d}],ActiveEffects:[{Id:26,Amplifier:9b,Duration:20}]}],Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.24d}],ActiveEffects:[{Id:26,Amplifier:9b,Duration:20}]}
execute if score #difficult counter matches 2 at @e[tag=necro_s12AEC] run summon skeleton_horse ~ ~ ~ {Tags:["mob","mobInit","undead","necro_s12entity"],Team:"Purple",AbsorptionAmount:183f,Health:1000f,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Tags:["mob","mobInit","undead","necro_s12entity"],Team:"Purple",AbsorptionAmount:122f,Health:1000f,HandDropChances:[-100f,-100f],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s},{id:"minecraft:punch",lvl:1s}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:32,Amplifier:4b,Duration:2}],CustomPotionColor:11141294}}],Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.follow_range",Base:40d}],ActiveEffects:[{Id:26,Amplifier:9b,Duration:20}]}],Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.26d}],ActiveEffects:[{Id:26,Amplifier:9b,Duration:20}]}
execute if score #difficult counter matches 3 at @e[tag=necro_s12AEC] run summon skeleton_horse ~ ~ ~ {Tags:["mob","mobInit","undead","necro_s12entity"],Team:"Purple",AbsorptionAmount:332f,Health:1000f,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Tags:["mob","mobInit","undead","necro_s12entity"],Team:"Purple",AbsorptionAmount:166f,Health:1000f,HandDropChances:[-100f,-100f],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:5s},{id:"minecraft:punch",lvl:1s}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:32,Amplifier:6b,Duration:2}],CustomPotionColor:11141294}}],Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.follow_range",Base:50d}],ActiveEffects:[{Id:26,Amplifier:9b,Duration:20}]}],Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.28d}],ActiveEffects:[{Id:26,Amplifier:9b,Duration:20}]}
execute if score #difficult counter matches 4 at @e[tag=necro_s12AEC] run summon skeleton_horse ~ ~ ~ {Tags:["mob","mobInit","undead","necro_s12entity"],Team:"Purple",AbsorptionAmount:444f,Health:1000f,Passengers:[{id:"minecraft:skeleton",PersistenceRequired:1b,Tags:["mob","mobInit","undead","necro_s12entity"],Team:"Purple",AbsorptionAmount:222f,Health:1000f,HandDropChances:[-100f,-100f],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:8s},{id:"minecraft:punch",lvl:1s}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:32,Amplifier:9b,Duration:2}],CustomPotionColor:11141294}}],Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.follow_range",Base:60d}],ActiveEffects:[{Id:26,Amplifier:9b,Duration:20}]}],Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.30d}],ActiveEffects:[{Id:26,Amplifier:9b,Duration:20}]}
scoreboard players set @e[tag=necro_s12entity] teamNumber 5
