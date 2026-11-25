scoreboard players remove @s Mana 17
scoreboard players set @s CooldownX 300
scoreboard players set @s CooldownX_max 300

summon area_effect_cloud ~ ~ ~ {Age:4,Duration:5,Effects:[{Amplifier:9b,Duration:13,Id:2}],Particle:"dust 0 0 0 0",Radius:0.4f,WaitTime:1,custom_particle:{color:[0.0f,0.0f,0.0f],scale:0.0f,type:"minecraft:dust"},potion_contents:{custom_effects:[{amplifier:9b,duration:13,id:"minecraft:slowness"}]},potion_duration_scale:0.25f,Tags:["wnkm.owned","wnkm.round"]}
summon area_effect_cloud ~ ~ ~ {Age:0,Duration:15,Radius:0.0f,Tags:["antares_ready","this","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=this] remove this

playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.5 1.5
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6

particle falling_dust{block_state:"minecraft:red_wool"} ~ ~ ~ 1.3 1.3 1.3 1 500 normal @a
particle falling_dust{block_state:"minecraft:red_wool"} ~ ~ ~ 1.3 1.3 1.3 1 125 force @a
