playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 4 2
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 4 1.4

execute if entity @e[tag=necro_s14_barrier,limit=1] run kill @e[tag=necro_s14_barrier]
execute if entity @e[tag=necro_s14_gate,limit=1] run kill @e[tag=necro_s14_gate]

scoreboard players set #dummy dummy 1
execute unless score #difficult counter matches 4 rotated 0 0 run function wancomatter:boss/necro/skill14/0_loop1
execute if score #difficult counter matches 4 rotated 0 0 run function wancomatter:boss/necro/skill14/0_loop2
tag @e[tag=first] remove first

summon minecraft:shulker ~ ~ ~ {Tags:["mob","mobInit","first","necro_s14_gate"],NoAI:1b,Color:10b,Team:"Purple",Glowing:1b,Peek:100b,Silent:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:1000f,ActiveEffects:[{Id:26,Amplifier:9b,Duration:1000000,ShowParticles:0b}]}
scoreboard players set @e[tag=first] teamNumber 5
scoreboard players operation @e[tag=first] subcounter = #dummy dummy
scoreboard players reset #dummy
tag @e[tag=first] remove first
