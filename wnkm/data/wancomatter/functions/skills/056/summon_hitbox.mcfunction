summon minecraft:chicken 0 -10 0 {Tags:["first","portal_hitbox","mob","mobInit"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:1,DeathTime:19s,NoAI:1b,Silent:1b,PersistenceRequired:1b,ActiveEffects:[{Id:14,Amplifier:127b,Duration:2147483647,ShowParticles:0b}],Team:"noPush"}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
tp @e[tag=first] ~ ~-0.3 ~
tag @e[tag=first] remove first