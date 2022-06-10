kill @e[tag=sils]
kill @e[tag=sils_hitbox]
kill @e[tag=sils_feather]
bossbar remove minecraft:sils
bossbar add minecraft:sils {"text":"銀翼の覇王 シルス","color":"gray","bold":true}
bossbar set minecraft:sils color blue
bossbar set minecraft:sils style notched_12
bossbar set minecraft:sils players @a
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"銀翼の覇王 シルス","bold":true,"color":"gray"}',ShowArms:1b,NoBasePlate:1b,CustomNameVisible:1b,Glowing:1b,Invulnerable:1b,Tags:["sils","boss","first","this"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777214}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777214}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777214}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"wnkm"}}]}
summon minecraft:armor_stand ~ ~ ~ {Tags:["sils_feather","this"],NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1005}},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1005}}],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}
execute as @e[tag=this] run data modify entity @s Pose.RightArm set value [0.0f,0.0f,0.0f]
execute as @e[tag=this] run data modify entity @s Pose.LeftArm set value [0.0f,0.0f,0.0f]
tag @e[tag=this] remove this
summon minecraft:ravager ~ ~ ~ {Tags:["mob","boss_hitbox","sils_hitbox","first"],Team:"noPush",Health:1000f,Attributes:[{Name:generic.max_health,Base:1000}],NoAI:1b,Silent:1b,ActiveEffects:[{Id:14,Amplifier:127b,Duration:2147483647,ShowParticles:0b}],DeathLootTable:"empty",DeathTime:19s,PersistenceRequired:1b}
scoreboard players set @e[tag=first] HP 3000
scoreboard players set @e[tag=first,tag=sils_hitbox] HP 300000
execute as @e[tag=first,tag=sils_hitbox] run scoreboard players operation @s maxHP = @s HP
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] dmgProtection 70
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] dmgProtection 75
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] dmgProtection 80
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] dmgProtection 85
tag @e[tag=first] remove first
execute store result bossbar minecraft:sils max run scoreboard players get @e[tag=sils,limit=1] HP
execute store result bossbar minecraft:sils value run scoreboard players get @e[tag=sils,limit=1] HP
execute as @e[tag=sils] run scoreboard players operation @s Mana = @s HP
execute as @e[tag=sils] run scoreboard players operation @s Mana /= #2 counter
