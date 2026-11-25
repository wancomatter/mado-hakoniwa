kill @e[tag=necro]
kill @e[tag=necro_stand]
summon minecraft:llama 0 -12.2 0 {Health:1000.0f,NoAI:1b,Passengers:[{Invisible:1b,Marker:1b,Small:1b,id:"minecraft:armor_stand",Tags:["wnkm.owned","wnkm.round"]}],Silent:1b,Tags:["mob","necro","boss","first","wnkm.owned","wnkm.round"],Team:"Purple",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.0d,id:"minecraft:movement_speed"},{base:1.0d,id:"minecraft:knockback_resistance"},{base:20.0d,id:"minecraft:armor_toughness"}],CustomName:{bold:1b,color:"dark_purple",text:"黄泉還りの死霊術師 リメア"},DeathLootTable:"empty"}
summon minecraft:armor_stand 0 8.02 0 {DisabledSlots:4144959,Glowing:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Tags:["necro_stand","necro_stand_b","wnkm.owned","wnkm.round"],Team:"Purple",equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1032},"minecraft:item_model":"wnkm:appearance/iron_hoe/1032"},count:1,id:"minecraft:iron_hoe"}}}
summon minecraft:armor_stand 0 8.02 0 {DisabledSlots:4144959,Glowing:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Tags:["necro_stand","necro_stand_l","wnkm.owned","wnkm.round"],Team:"Purple",equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1034},"minecraft:item_model":"wnkm:appearance/iron_hoe/1034"},count:1,id:"minecraft:iron_hoe"}}}
summon minecraft:armor_stand 0 8.02 0 {DisabledSlots:4144959,Glowing:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Tags:["necro_stand","necro_stand_r","wnkm.owned","wnkm.round"],Team:"Purple",equipment:{head:{components:{"minecraft:custom_data":{LegacySkill:1035},"minecraft:item_model":"wnkm:appearance/iron_hoe/1035"},count:1,id:"minecraft:iron_hoe"}}}
execute as @e[tag=necro_stand_r] run data modify entity @s Pose.Head set value [0.0f,0.1f,0.0f]
execute as @e[tag=necro_stand_l] run data modify entity @s Pose.Head set value [0.0f,0.1f,0.0f]

bossbar remove minecraft:necro
effect give @e[tag=first] minecraft:invisibility 1000000 127 true
execute as @e[tag=first] at @s run tp @s 0 ~20 0

bossbar add necro {"text":"黄泉還りの死霊術師 リメア","color":"dark_purple","bold":true}
scoreboard players set @e[tag=first] damageTaken 0
scoreboard players set @e[tag=first] maxHP 13500
scoreboard players set #dummy counter -1
execute as @a[team=!z_spectate] run scoreboard players add #dummy counter 1
execute as @e[tag=first] run scoreboard players operation #dummy counter *= @s maxHP
scoreboard players operation #dummy counter /= #8 counter
execute as @e[tag=first] run scoreboard players operation @s maxHP += #dummy counter
scoreboard players reset #dummy
scoreboard players set @e[tag=first] counter 0
scoreboard players set @e[tag=first] maxMana 1
scoreboard players set @e[tag=first] teamNumber 5
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] dmgProtection 0
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] dmgProtection 20
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] dmgProtection 35
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] dmgProtection 50
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s Mana = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s Mana *= #7 counter
execute as @e[tag=first] run scoreboard players operation @s Mana /= #12 counter
bossbar set minecraft:necro color purple
execute store result bossbar minecraft:necro max run scoreboard players get @e[tag=first,limit=1] maxHP
execute store result bossbar minecraft:necro value run scoreboard players get @e[tag=first,limit=1] HP
bossbar set minecraft:necro style progress
bossbar set minecraft:necro visible true
bossbar set minecraft:necro players @a

playsound minecraft:entity.wither.spawn master @a 0 -100 0 0 0.8 1
execute at @e[tag=necro] run particle minecraft:explosion_emitter 0 7 0 0 0 0 1 1 force @a
execute at @e[tag=necro] run particle flame 0 7 0 3 3 3 1.4 1000 force @a
playsound minecraft:entity.generic.explode master @a 0 -100 0 0 0.8 1
effect give @e[tag=necro] minecraft:luck 1 9 true
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"  VS 黄泉還りの死霊術師 リメア","color":"dark_purple","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"  Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"  Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"  Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"  Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}

tag @e[tag=necro,tag=first] remove first
