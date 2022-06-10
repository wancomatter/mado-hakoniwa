scoreboard players set @s Cooldown6 160
tag @s add b3s22used
tag @s add b3s22

kill @e[tag=b3s22block]
kill @e[tag=b3s22charge]
kill @e[tag=b3s22hitbox]
summon armor_stand -11 25 -33 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["this","b3s22charge"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Glowing:1b,Tags:["this","b3s22block"],BlockState:{Name:"minecraft:redstone_block"},Time:-10000},{id:"minecraft:ghast",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:200,DeathTime:19s,Tags:["this","b3s22hitbox","mob","mobInit"],NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}]}]}
summon armor_stand -27 25 -21 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["this","b3s22charge"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Glowing:1b,Tags:["this","b3s22block"],BlockState:{Name:"minecraft:redstone_block"},Time:-10000},{id:"minecraft:ghast",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:200,DeathTime:19s,Tags:["this","b3s22hitbox","mob","mobInit"],NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}]}]}
summon armor_stand 11 25 -33 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["this","b3s22charge"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Glowing:1b,Tags:["this","b3s22block"],BlockState:{Name:"minecraft:redstone_block"},Time:-10000},{id:"minecraft:ghast",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:200,DeathTime:19s,Tags:["this","b3s22hitbox","mob","mobInit"],NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}]}]}
summon armor_stand 27 25 -21 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["this","b3s22charge"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Glowing:1b,Tags:["this","b3s22block"],BlockState:{Name:"minecraft:redstone_block"},Time:-10000},{id:"minecraft:ghast",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:200,DeathTime:19s,Tags:["this","b3s22hitbox","mob","mobInit"],NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}]}]}
summon armor_stand 27 25 21 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["this","b3s22charge"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Glowing:1b,Tags:["this","b3s22block"],BlockState:{Name:"minecraft:redstone_block"},Time:-10000},{id:"minecraft:ghast",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:200,DeathTime:19s,Tags:["this","b3s22hitbox","mob","mobInit"],NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}]}]}
summon armor_stand 11 25 33 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["this","b3s22charge"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Glowing:1b,Tags:["this","b3s22block"],BlockState:{Name:"minecraft:redstone_block"},Time:-10000},{id:"minecraft:ghast",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:200,DeathTime:19s,Tags:["this","b3s22hitbox","mob","mobInit"],NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}]}]}
summon armor_stand -11 25 33 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["this","b3s22charge"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Glowing:1b,Tags:["this","b3s22block"],BlockState:{Name:"minecraft:redstone_block"},Time:-10000},{id:"minecraft:ghast",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:200,DeathTime:19s,Tags:["this","b3s22hitbox","mob","mobInit"],NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}]}]}
summon armor_stand -27 25 21 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["this","b3s22charge"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Glowing:1b,Tags:["this","b3s22block"],BlockState:{Name:"minecraft:redstone_block"},Time:-10000},{id:"minecraft:ghast",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}],AbsorptionAmount:200,DeathTime:19s,Tags:["this","b3s22hitbox","mob","mobInit"],NoAI:1b,Silent:1b,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticle:0b}]}]}
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this

tellraw @a ["",{"text":"<終焉の炎霊 ダスク> ","color":"red"},{"text":"我が望むは宵闇に沈みゆく光･･････"}]
execute positioned 0 7 0 run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 6 0.8
#playsound minecraft:block.portal.travel master @a 0 -100 0 0 0.5 1
effect give @a minecraft:blindness 1 0 true
#particle minecraft:flash ~ ~1.2 ~ 1 1 1 1 10 force @a
#tp @s 0 10 0
