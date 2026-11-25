scoreboard players set @s Cooldown6 300
tag @s add usedskill

summon polar_bear ~ ~ ~ {DeathTime:19s,Glowing:1b,Health:1000.0f,NoAI:1b,NoGravity:1b,Rotation:[0.0f,-15.0f],Silent:1b,Tags:["first","bear_s6fannel","mob","wnkm.owned","wnkm.round"],Team:"DarkRed",attributes:[{base:1000.0d,id:"minecraft:max_health"}]}
summon polar_bear ~ ~ ~ {DeathTime:19s,Glowing:1b,Health:1000.0f,NoAI:1b,NoGravity:1b,Rotation:[0.0f,-15.0f],Silent:1b,Tags:["first","bear_s6fannel","mob","wnkm.owned","wnkm.round"],Team:"DarkRed",attributes:[{base:1000.0d,id:"minecraft:max_health"}]}
execute if score #difficult counter matches 2..4 run summon polar_bear ~ ~ ~ {DeathTime:19s,Glowing:1b,Health:1000.0f,NoAI:1b,NoGravity:1b,Rotation:[0.0f,-15.0f],Silent:1b,Tags:["first","bear_s6fannel","mob","wnkm.owned","wnkm.round"],Team:"DarkRed",attributes:[{base:1000.0d,id:"minecraft:max_health"}]}
execute if score #difficult counter matches 4 run summon polar_bear ~ ~ ~ {DeathTime:19s,Glowing:1b,Health:1000.0f,NoAI:1b,NoGravity:1b,Rotation:[0.0f,-15.0f],Silent:1b,Tags:["first","bear_s6fannel","mob","wnkm.owned","wnkm.round"],Team:"DarkRed",attributes:[{base:1000.0d,id:"minecraft:max_health"}]}
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
