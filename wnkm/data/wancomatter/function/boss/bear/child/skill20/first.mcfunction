tag @s add bear_s20_used

summon minecraft:polar_bear ~ 8 ~ {CustomNameVisible:1b,Glowing:1b,Health:1000.0f,PersistenceRequired:1b,Tags:["mob","bear","bear_p","bear_reborned","boss","first","wnkm.owned","wnkm.round"],Team:"white",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.3d,id:"minecraft:movement_speed"},{base:12.0d,id:"minecraft:attack_damage"},{base:0.5d,id:"minecraft:knockback_resistance"},{base:5.0d,id:"minecraft:attack_knockback"},{base:100.0d,id:"minecraft:follow_range"},{base:20.0d,id:"minecraft:armor_toughness"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:0.0f,offhand:0.0f},equipment:[{},{},{},{}],CustomName:{bold:1b,color:"aqua",text:"凛冽に佇む親子愛 くま"},DeathLootTable:"empty"}
bossbar remove minecraft:bear_p
bossbar add minecraft:bear_p {"text":"凛冽に佇む親子愛 くま","color":"aqua","bold":true}
scoreboard players set @e[tag=first] damageTaken 0
scoreboard players set @e[tag=first] maxHP 2000
scoreboard players set #dummy counter -1
execute as @a[team=!z_spectate] run scoreboard players add #dummy counter 1
execute as @e[tag=first] run scoreboard players operation #dummy counter *= @s maxHP
scoreboard players operation #dummy counter /= #8 counter
execute as @e[tag=first] run scoreboard players operation @s maxHP += #dummy counter
scoreboard players reset #dummy
scoreboard players set @e[tag=first] Cooldown2 320
scoreboard players set @e[tag=first] Cooldown3 240
scoreboard players set @e[tag=first] Cooldown4 300
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
execute unless score #difficult counter matches 3..4 as @e[tag=first] run scoreboard players operation @s HP /= #2 counter
execute unless score #difficult counter matches 4 as @e[tag=first] run scoreboard players operation @s HP /= #2 counter
execute unless score #difficult counter matches 2..4 as @e[tag=first] run data modify entity @s Attributes[{Name:"minecraft:generic.armor"}] set value {Name:"generic.armor",Base:7d}
execute if score #difficult counter matches 2 as @e[tag=first] run data modify entity @s Attributes[{Name:"minecraft:generic.armor"}] set value {Name:"generic.armor",Base:11d}
execute if score #difficult counter matches 3 as @e[tag=first] run data modify entity @s Attributes[{Name:"minecraft:generic.armor"}] set value {Name:"generic.armor",Base:15d}
execute if score #difficult counter matches 4 as @e[tag=first] run data modify entity @s Attributes[{Name:"minecraft:generic.armor"}] set value {Name:"generic.armor",Base:18d}
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] magicResist 28
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] magicResist 44
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] magicResist 60
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] magicResist 72
bossbar set minecraft:bear_p color blue
execute store result bossbar minecraft:bear_p max run scoreboard players get @e[tag=first,limit=1] maxHP
execute store result bossbar minecraft:bear_p value run scoreboard players get @e[tag=first,limit=1] HP
bossbar set minecraft:bear_p style progress
bossbar set minecraft:bear_p visible true
bossbar set minecraft:bear_p players @a

playsound minecraft:entity.wither.spawn master @a 0 -100 0 0 0.8 1
effect give @e[tag=bear] minecraft:luck 1 9 true
tellraw @a {"text":"※ 野生のくまが現れた！","color":"aqua","underlined":true,"bold":true}

execute if entity @e[tag=bear,tag=first] run team join Enemy @e[tag=bear,tag=first]
tag @e[tag=bear,tag=first] remove first
