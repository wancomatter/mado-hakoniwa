scoreboard players remove @s Mana 17
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300

summon area_effect_cloud ~ ~ ~ {Duration:5,Age:4,WaitTime:1,Radius:0.4f,Particle:"dust 0 0 0 0",Effects:[{Id:2,Amplifier:9b,Duration:13}]}
summon area_effect_cloud ~ ~ ~ {Duration:15,Age:0,Radius:0.0f,Tags:["antares_ready","this"]}
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=this] remove this

playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.5 1.5
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6

particle minecraft:falling_dust red_wool ~ ~ ~ 1.3 1.3 1.3 1 500 normal @a
particle minecraft:falling_dust red_wool ~ ~ ~ 1.3 1.3 1.3 1 125 force @a
