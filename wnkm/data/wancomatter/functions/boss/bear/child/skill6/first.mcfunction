scoreboard players set @s Cooldown6 300
tag @s add usedskill

summon polar_bear ~ ~ ~ {Tags:["first","bear_s6fannel","mob"],NoAI:1b,Silent:1b,DeathTime:19s,NoGravity:1b,Team:"DarkRed",Rotation:[0f,-15f],Glowing:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}
summon polar_bear ~ ~ ~ {Tags:["first","bear_s6fannel","mob"],NoAI:1b,Silent:1b,DeathTime:19s,NoGravity:1b,Team:"DarkRed",Rotation:[0f,-15f],Glowing:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}
execute if score #difficult counter matches 2..4 run summon polar_bear ~ ~ ~ {Tags:["first","bear_s6fannel","mob"],NoAI:1b,Silent:1b,DeathTime:19s,NoGravity:1b,Team:"DarkRed",Rotation:[0f,-15f],Glowing:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}
execute if score #difficult counter matches 4 run summon polar_bear ~ ~ ~ {Tags:["first","bear_s6fannel","mob"],NoAI:1b,Silent:1b,DeathTime:19s,NoGravity:1b,Team:"DarkRed",Rotation:[0f,-15f],Glowing:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 4 2
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 4 2
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] HP 60
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] maxHP 60
execute unless score #difficult counter matches 3..4 run scoreboard players set @e[tag=first] counter 150
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] HP 120
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] maxHP 120
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] counter 160
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] HP 200
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] maxHP 200
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] counter 180
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] HP 300
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] maxHP 300
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] counter 200
execute as @e[tag=first] run function wancomatter:boss/bear/child/skill6/random_rotation0
tag @e[tag=first] remove first
