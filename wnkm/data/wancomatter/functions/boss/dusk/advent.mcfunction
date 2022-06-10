kill @e[tag=dusk]
summon minecraft:stray 0 9.8 0 {Tags:["mob","undead","dusk","boss","first"],Team:"Enemy",CustomName:'{"text":"終焉の炎霊 ダスク","color":"red","bold":true}',Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.24d},{Name:"generic.attack_damage",Base:10d},{Name:"generic.knockback_resistance",Base:0.9d},{Name:"generic.follow_range",Base:100d}],CustomNameVisible:1b,PersistenceRequired:1b,Silent:1b,Glowing:1b,DeathLootTable:"empty",HandItems:[{tag:{CustomModelData:1003,Enchantments:[{}]},id:"minecraft:iron_hoe",Count:1b},{}],HandDropChances:[0f,0f],ArmorItems:[{},{},{tag:{AttributeModifiers:[{}],display:{color:10689564}},id:"minecraft:leather_chestplate",Count:1b},{tag:{AttributeModifiers:[{Name:"HaruEditor",UUID:[I;0,840189758,0,840189758],Operation:0,AttributeName:"generic.armor",Amount:6d,Slot:"head"}],SkullOwner:{Id:[I;1274974332,-1442925911,-779908940,1694896209],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2NGViOGU5OWUyODc4ZjM0MzgwM2E3NDJlZjU3Y2VhZmFjYzIyODNlNjdiODhlZGVjMTY4MjEzMTZmOWYifX19"}]}}},id:"minecraft:player_head",Count:1b}],ArmorDropChances:[-100f,-100f,-100f,-100f]}
bossbar remove minecraft:dusk
#effect give @e[tag=first] minecraft:invisibility 1000000 127 true

bossbar add dusk {"text":"終焉の炎霊 ダスク","color":"red","bold":true}
scoreboard players set @e[tag=first] damageTaken 0
scoreboard players set @e[tag=first] maxHP 6600
scoreboard players set #dummy counter -1
execute as @a[team=!z_spectate] run scoreboard players add #dummy counter 1
execute as @e[tag=first] run scoreboard players operation #dummy counter *= @s maxHP
scoreboard players operation #dummy counter /= #8 counter
execute as @e[tag=first] run scoreboard players operation @s maxHP += #dummy counter
scoreboard players reset #dummy
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] dmgShield 10
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] dmgShield 20
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] dmgShield 30
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] dmgShield 40
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s Mana = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s maxMana = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s Mana *= #2 counter
execute as @e[tag=first] run scoreboard players operation @s Mana /= #3 counter
execute as @e[tag=first] run scoreboard players operation @s maxMana /= #3 counter
bossbar set minecraft:dusk color red
execute store result bossbar minecraft:dusk max run scoreboard players get @e[tag=first,limit=1] maxHP
execute store result bossbar minecraft:dusk value run scoreboard players get @e[tag=first,limit=1] HP
bossbar set minecraft:dusk style progress
bossbar set minecraft:dusk visible true
bossbar set minecraft:dusk players @a

playsound minecraft:entity.wither.spawn master @a 0 -100 0 0 0.8 1
execute at @e[tag=dusk] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
execute at @e[tag=dusk] run particle flame ~ ~ ~ 3 3 3 1.4 1000 force @a
playsound minecraft:entity.generic.explode master @a 0 -100 0 0 0.8 1
effect give @e[tag=dusk] minecraft:luck 1 9 true
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"\u0020\u0020VS 終焉の炎霊 ダスク","color":"red","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"\u0020\u0020Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"\u0020\u0020Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"\u0020\u0020Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"\u0020\u0020Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}

execute if entity @e[tag=dusk,tag=first] run team join Enemy @e[tag=dusk,tag=first]
tag @e[tag=dusk,tag=first] remove first