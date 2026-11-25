summon minecraft:chicken 0 -10 0 {AbsorptionAmount:1,ActiveEffects:[{Amplifier:127b,Duration:2147483647,Id:14,ShowParticles:0b}],DeathTime:19s,Health:1000.0f,NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["first","portal_hitbox","mob","mobInit","wnkm.owned","wnkm.round"],Team:"noPush",active_effects:[{amplifier:127b,duration:2147483647,id:"minecraft:invisibility",show_particles:0b}],attributes:[{base:1000.0d,id:"minecraft:max_health"}]}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
tp @e[tag=first] ~ ~-0.3 ~
tag @e[tag=first] remove first
