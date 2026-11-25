playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 5 0.8

kill @e[tag=bear]
summon minecraft:polar_bear 0 8.2 0 {Age:-2147483648,CustomNameVisible:1b,Glowing:1b,Health:1000.0f,NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["mob","bear","bear_c","boss","first","wnkm.owned","wnkm.round"],Team:"white",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.3d,id:"minecraft:movement_speed"},{base:12.0d,id:"minecraft:attack_damage"},{base:0.5d,id:"minecraft:knockback_resistance"},{base:5.0d,id:"minecraft:attack_knockback"},{base:100.0d,id:"minecraft:follow_range"},{base:20.0d,id:"minecraft:armor_toughness"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:0.0f,offhand:0.0f},equipment:[{},{},{},{}],CustomName:{bold:1b,color:"aqua",text:"永久に轟く子の怒り こぐま"},DeathLootTable:"empty"}
bossbar remove minecraft:bear_c
bossbar add minecraft:bear_c {"text":"永久に轟く子の怒り こぐま","color":"aqua","bold":true}
scoreboard players set @e[tag=first] damageTaken 0
scoreboard players set @e[tag=first] maxHP 2000
scoreboard players set #dummy counter -1
execute as @a[team=!z_spectate] run scoreboard players add #dummy counter 1
execute as @e[tag=first] run scoreboard players operation #dummy counter *= @s maxHP
scoreboard players operation #dummy counter /= #8 counter
execute as @e[tag=first] run scoreboard players operation @s maxHP += #dummy counter
scoreboard players reset #dummy
scoreboard players set @e[tag=first] Cooldown1 100
scoreboard players set @e[tag=first] Cooldown5 200
scoreboard players set @e[tag=first] Cooldown6 50
scoreboard players set @e[tag=first] Cooldown7 200
scoreboard players set @e[tag=first] Cooldown8 200
execute if score #difficult counter matches 2..4 as @e[tag=first] run scoreboard players operation @s Mana = @s maxHP
execute if score #difficult counter matches 2..4 as @e[tag=first] run scoreboard players operation @s Mana /= #2 counter
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
execute unless score #difficult counter matches 2..4 as @e[tag=first] run attribute @s armor base set 7
execute if score #difficult counter matches 2 as @e[tag=first] run attribute @s armor base set 11
execute if score #difficult counter matches 3 as @e[tag=first] run attribute @s armor base set 15
execute if score #difficult counter matches 4 as @e[tag=first] run attribute @s armor base set 18
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] magicResist 28
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] magicResist 44
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] magicResist 60
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] magicResist 72
bossbar set minecraft:bear_c color blue
execute store result bossbar minecraft:bear_c max run scoreboard players get @e[tag=first,limit=1] maxHP
execute store result bossbar minecraft:bear_c value run scoreboard players get @e[tag=first,limit=1] HP
bossbar set minecraft:bear_c style progress
bossbar set minecraft:bear_c visible true
bossbar set minecraft:bear_c players @a
tellraw @a {"text":"※ 野生のこぐまが現れた！","color":"aqua","underlined":true,"bold":true}
tag @e[tag=first] remove first
