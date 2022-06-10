kill @e[tag=detonator]
summon minecraft:stray 0 11 0 {Tags:["mob","undead","detonator","boss","first"],Team:"Yellow",CustomName:'{"text":"暴虐の雷鳴 デトネイター","color":"yellow","bold":true}',Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.attack_damage",Base:12d},{Name:"generic.knockback_resistance",Base:0.9d},{Name:"generic.follow_range",Base:100d}],CustomNameVisible:1b,PersistenceRequired:1b,Silent:1b,Glowing:1b,DeathLootTable:"empty",HandItems:[{tag:{CustomModelData:108,Enchantments:[{}]},id:"minecraft:carrot_on_a_stick",Count:1b},{}],HandDropChances:[0f,0f],ArmorItems:[{tag:{AttributeModifiers:[{}]},id:"minecraft:air",Count:1b},{tag:{AttributeModifiers:[{}]},id:"minecraft:air",Count:1b},{tag:{AttributeModifiers:[{}]},id:"minecraft:diamond_chestplate",Count:1b},{tag:{AttributeModifiers:[{Name:"HaruEditor",UUID:[I;0,0,0,0],Operation:0,AttributeName:"generic.armor",Amount:6d,Slot:"head"}],SkullOwner:{Id:[I;1,2,3,4],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDFhNTk1MDczZjMwNDlhZDUwYmZmMThlYjlhNTQwNTIxMWU2ZDEzOTM4YTVjODRiOTRiMTUyMWExYjRkNTVjYiJ9fX0="}]}}},id:"minecraft:player_head",Count:1b}],ArmorDropChances:[-100f,-100f,-100f,-100f]}

scoreboard players set @e[tag=first] damageTaken 0
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] maxHP 8000
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] maxHP 10000
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] maxHP 12000
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] maxHP 13000
scoreboard players set #dummy counter -1
execute as @a[team=!z_spectate] run scoreboard players add #dummy counter 1
execute as @e[tag=first] run scoreboard players operation #dummy counter *= @s maxHP
scoreboard players operation #dummy counter /= #8 counter
execute as @e[tag=first] run scoreboard players operation @s maxHP += #dummy counter
scoreboard players reset #dummy
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s Mana = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s maxMana = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s Mana *= #2 counter
execute as @e[tag=first] run scoreboard players operation @s Mana /= #3 counter
execute as @e[tag=first] run scoreboard players operation @s maxMana /= #3 counter

bossbar remove minecraft:detonator
bossbar add detonator {"text":"暴虐の雷鳴 デトネイター","color":"yellow","bold":true}
bossbar set minecraft:detonator color yellow
execute store result bossbar minecraft:detonator max run scoreboard players get @e[tag=first,limit=1] maxHP
execute store result bossbar minecraft:detonator value run scoreboard players get @e[tag=first,limit=1] HP
bossbar set minecraft:detonator style progress
bossbar set minecraft:detonator visible true
bossbar set minecraft:detonator players @a
playsound minecraft:entity.wither.spawn master @a 0 -100 0 0 0.8 1
summon minecraft:lightning_bolt 0 10 0
summon minecraft:lightning_bolt 0 10 0
effect give @e[tag=detonator] minecraft:luck 1 9 true
tag @e[tag=b1s6target] remove b1s6target
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"\u0020\u0020VS 暴虐の雷鳴 デトネイター","color":"yellow","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"\u0020\u0020Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"\u0020\u0020Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"\u0020\u0020Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"\u0020\u0020Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}
execute if score #difficult counter matches 4 run function wancomatter:boss/detonator/lunatic

execute if entity @e[tag=detonator,tag=first] run team join Enemy @e[tag=detonator,tag=first]
tag @e[tag=detonator,tag=first] remove first

