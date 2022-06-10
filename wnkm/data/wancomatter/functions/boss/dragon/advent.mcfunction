kill @e[tag=dragon1_stand]
kill @e[tag=dragon1_hitbox]

execute positioned -120 38 0 rotated -90 0 run summon minecraft:armor_stand ^ ^ ^ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Tags:["dragon1_stand","dragon1_stand_body","boss","boss_dragon_init"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1041}}],Rotation:[-90f,0f]}
execute positioned -120 38 0 rotated -90 0 run summon minecraft:armor_stand ^ ^0.75 ^2 {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Tags:["dragon1_stand","dragon1_stand_head","boss_dragon_parts_init","boss_dragon_parts"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1040}}],Rotation:[-90f,0f]}
execute positioned -120 38 0 rotated -90 0 run summon minecraft:armor_stand ^-0.3 ^0.32 ^2.3 {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Tags:["dragon1_stand","dragon1_stand_legL","boss_dragon_parts_init","boss_dragon_parts"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1042}}],Rotation:[-90f,0f]}
execute positioned -120 38 0 rotated -90 0 run summon minecraft:armor_stand ^0.3 ^0.32 ^2.3 {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Tags:["dragon1_stand","dragon1_stand_legR","boss_dragon_parts_init","boss_dragon_parts"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1043}}],Rotation:[-90f,0f]}
execute positioned -120 38 0 rotated -90 0 run summon minecraft:armor_stand ^ ^0.2 ^ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Tags:["dragon1_stand","dragon1_stand_legB","boss_dragon_parts_init","boss_dragon_parts"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1044}}],Rotation:[-90f,0f]}
execute positioned -120 38 0 rotated -90 0 run summon minecraft:armor_stand ^ ^0.5 ^ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Tags:["dragon1_stand","dragon1_stand_wingL","boss_dragon_parts_init","boss_dragon_parts"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1045}}],Rotation:[-90f,0f]}
execute positioned -120 38 0 rotated -90 0 run summon minecraft:armor_stand ^ ^0.5 ^ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Tags:["dragon1_stand","dragon1_stand_wingR","boss_dragon_parts_init","boss_dragon_parts"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1046}}],Rotation:[-90f,0f]}
execute positioned -120 38 0 rotated -90 0 run summon minecraft:armor_stand ^ ^0.7 ^-2.7 {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Tags:["dragon1_stand","dragon1_stand_tail","boss_dragon_parts_init","boss_dragon_parts"],ArmorItems:[{},{},{},{id:"minecraft:iron_hoe",Count:1b,tag:{CustomModelData:1047}}],Rotation:[-90f,0f]}

execute at @e[tag=boss_dragon_init] rotated -90 0 run summon minecraft:ravager ^ ^1 ^0.98 {PersistenceRequired:1b,NoAI:1b,Silent:1b,Tags:["dragon1_hitbox","largeEntity","boss_hitbox","boss_dragon_parts_init","boss_dragon_parts","boss_hitbox1"],Rotation:[-90f,0f],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}
execute at @e[tag=boss_dragon_init] rotated -90 0 run summon minecraft:ravager ^ ^1 ^-0.98 {PersistenceRequired:1b,NoAI:1b,Silent:1b,Tags:["dragon1_hitbox","largeEntity","boss_hitbox","boss_dragon_parts_init","boss_dragon_parts","boss_hitbox2"],Rotation:[-90f,0f],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}
execute at @e[tag=dragon1_stand_head,tag=boss_dragon_parts_init] rotated -90 0 run summon minecraft:ravager ^ ^1 ^0.98 {PersistenceRequired:1b,NoAI:1b,Silent:1b,Tags:["dragon1_hitbox","largeEntity","boss_hitbox","boss_dragon_parts_init","boss_dragon_parts","boss_hitbox3"],Rotation:[-90f,0f],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}
execute at @e[tag=dragon1_stand_tail,tag=boss_dragon_parts_init] rotated -90 0 run summon minecraft:ravager ^ ^ ^-0.28 {PersistenceRequired:1b,NoAI:1b,Silent:1b,Tags:["dragon1_hitbox","largeEntity","boss_hitbox","boss_dragon_parts_init","boss_dragon_parts","boss_hitbox4"],Rotation:[-90f,0f],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}
execute at @e[tag=dragon1_stand_tail,tag=boss_dragon_parts_init] rotated -90 0 run summon minecraft:ravager ^ ^-0.2 ^-2.24 {PersistenceRequired:1b,NoAI:1b,Silent:1b,Tags:["dragon1_hitbox","largeEntity","boss_hitbox","boss_dragon_parts_init","boss_dragon_parts","boss_hitbox5"],Rotation:[-90f,0f],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d}]}
effect give @e[tag=dragon1_hitbox,tag=boss_dragon_parts_init] minecraft:invisibility 1000000 0 true

#boss_dragon_init

#execute as @e[tag=dragon1_stand_stand] at @s run tp @s ~ ~ ~ -90 0
#execute as @e[tag=dragon1_stand_hitbox] at @s run tp @s ~ ~ ~ -90 0

bossbar remove minecraft:dragon1
bossbar add dragon1 {"text":"天壌無窮の雲海龍","color":"#bbffee","bold":true}
scoreboard players set @e[tag=boss_dragon_init] damageTaken 0
scoreboard players set @e[tag=boss_dragon_init] sneak 1
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=boss_dragon_init] maxHP 24000
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=boss_dragon_init] maxHP 30000
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=boss_dragon_init] maxHP 40000
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=boss_dragon_init] maxHP 48000
scoreboard players set #dummy counter -1
execute as @a[team=!z_spectate] run scoreboard players add #dummy counter 1
execute as @e[tag=boss_dragon_init] run scoreboard players operation #dummy counter *= @s maxHP
scoreboard players operation #dummy counter /= #8 counter
execute as @e[tag=boss_dragon_init] run scoreboard players operation @s maxHP += #dummy counter
scoreboard players reset #dummy
scoreboard players set @e[tag=boss_dragon_init] counter 0
scoreboard players set @e[tag=boss_dragon_init] maxMana 1
scoreboard players set @e[tag=boss_dragon_init] teamNumber 5
scoreboard players set @e[tag=boss_dragon_init] aviate 50
scoreboard players set @e[tag=boss_dragon_init] dmgProtection 20
scoreboard players set @e[tag=dragon1_hitbox,tag=boss_dragon_parts_init] dmgProtection 20
scoreboard players set @e[tag=dragon1_hitbox,tag=boss_dragon_parts_init] maxHP 2147483647
execute as @e[tag=boss_dragon_init] run scoreboard players operation @s HP = @s maxHP
execute as @e[tag=boss_dragon_init] run scoreboard players operation @s Mana = @s maxHP
execute as @e[tag=boss_dragon_init] run scoreboard players operation @s Mana *= #3 counter
execute as @e[tag=boss_dragon_init] run scoreboard players operation @s Mana /= #4 counter
bossbar set minecraft:dragon1 color green
execute store result bossbar minecraft:dragon1 max run scoreboard players get @e[tag=boss_dragon_init,limit=1] maxHP
execute store result bossbar minecraft:dragon1 value run scoreboard players get @e[tag=boss_dragon_init,limit=1] HP
bossbar set minecraft:dragon1 style progress
bossbar set minecraft:dragon1 visible true
bossbar set minecraft:dragon1 players @a

playsound minecraft:entity.wither.spawn master @a 0 -100 0 0 0.8 1
playsound minecraft:entity.generic.explode master @a 0 -100 0 0 0.8 1
effect give @e[tag=boss_dragon_init] minecraft:luck 1 9 true
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"\u0020\u0020VS 天壌無窮の雲海龍","color":"#bbffee","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"\u0020\u0020Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"\u0020\u0020Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"\u0020\u0020Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"\u0020\u0020Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}
tellraw @a {"text":"固有特性: プレイヤーの近接ダメージ ×4倍","color":"#8888ff","bold":true}

execute as @e[tag=boss_dragon_init] at @s run function mob_manager:init/
execute as @e[tag=dragon1_hitbox,tag=boss_dragon_parts_init] at @s run function mob_manager:init/
scoreboard players operation @e[tag=boss_dragon_parts_init] ownerNumber = @e[tag=boss_dragon_init,limit=1] playerNumber
tag @e[tag=boss_dragon_parts_init] remove boss_dragon_parts_init
tag @e[tag=boss_dragon_init] remove boss_dragon_init