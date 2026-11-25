playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 4 2
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 4 1.4

execute if entity @e[tag=necro_s14_barrier,limit=1] run kill @e[tag=necro_s14_barrier]
execute if entity @e[tag=necro_s14_gate,limit=1] run kill @e[tag=necro_s14_gate]

scoreboard players set #dummy dummy 1
execute unless score #difficult counter matches 4 rotated 0 0 run function wancomatter:boss/necro/skill14/0_loop1
execute if score #difficult counter matches 4 rotated 0 0 run function wancomatter:boss/necro/skill14/0_loop2
tag @e[tag=first] remove first

summon minecraft:shulker ~ ~ ~ {AbsorptionAmount:1000.0f,ActiveEffects:[{Amplifier:9b,Duration:1000000,Id:26,ShowParticles:0b}],Color:10b,Glowing:1b,Health:1000.0f,NoAI:1b,Peek:100b,Silent:1b,Tags:["mob","mobInit","first","necro_s14_gate","wnkm.owned","wnkm.round"],Team:"Purple",active_effects:[{amplifier:9b,duration:1000000,id:"minecraft:luck",show_particles:0b}],attributes:[{base:1000.0d,id:"minecraft:max_health"}]}
scoreboard players set @e[tag=first] teamNumber 5
scoreboard players operation @e[tag=first] subcounter = #dummy dummy
scoreboard players reset #dummy
tag @e[tag=first] remove first
