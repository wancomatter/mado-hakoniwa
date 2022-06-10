kill @e[tag=necro]
kill @e[tag=necro_stand]
summon minecraft:llama 0 -12.2 0 {Tags:["mob","necro","boss","first"],Team:"Purple",CustomName:'{"text":"黄泉還りの死霊術師 リメア","color":"dark_purple","bold":true}',Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.0d},{Name:"generic.knockback_resistance",Base:1.0d},{Name:"generic.armor_toughness",Base:20d}],Silent:1b,NoAI:1b,DeathLootTable:"empty",Passengers:[{id:"minecraft:armor_stand",Marker:1b,Small:1b,Invisible:1b}]}
summon minecraft:armor_stand 0 8.02 0 {Tags:["necro_stand","necro_stand_b"],Team:"Purple",NoBasePlate:1b,Invisible:1b,Invulnerable:1b,Glowing:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1032}}],DisabledSlots:4144959}
summon minecraft:armor_stand 0 8.02 0 {Tags:["necro_stand","necro_stand_l"],Team:"Purple",NoBasePlate:1b,Invisible:1b,Invulnerable:1b,Glowing:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1034}}],DisabledSlots:4144959}
summon minecraft:armor_stand 0 8.02 0 {Tags:["necro_stand","necro_stand_r"],Team:"Purple",NoBasePlate:1b,Invisible:1b,Invulnerable:1b,Glowing:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1035}}],DisabledSlots:4144959}
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
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"\u0020\u0020VS 黄泉還りの死霊術師 リメア","color":"dark_purple","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"\u0020\u0020Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"\u0020\u0020Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"\u0020\u0020Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"\u0020\u0020Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}

tag @e[tag=necro,tag=first] remove first