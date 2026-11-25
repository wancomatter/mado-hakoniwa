kill @e[tag=detonator]
summon minecraft:stray 0 11 0 {CustomNameVisible:1b,Glowing:1b,Health:1000.0f,PersistenceRequired:1b,Silent:1b,Tags:["mob","undead","detonator","boss","first","wnkm.owned","wnkm.round"],Team:"Yellow",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.3d,id:"minecraft:movement_speed"},{base:12.0d,id:"minecraft:attack_damage"},{base:0.9d,id:"minecraft:knockback_resistance"},{base:100.0d,id:"minecraft:follow_range"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:0.0f,offhand:0.0f},equipment:{chest:{components:{"minecraft:attribute_modifiers":[]},count:1,id:"minecraft:diamond_chestplate"},feet:{components:{"minecraft:attribute_modifiers":[]},count:1,id:"minecraft:air"},head:{components:{"minecraft:attribute_modifiers":[{amount:6.0d,id:"minecraft:00000000-0000-0000-0000-000000000000",operation:"add_value",slot:"head",type:"minecraft:armor"}],"minecraft:profile":{id:[I;1,2,3,4],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDFhNTk1MDczZjMwNDlhZDUwYmZmMThlYjlhNTQwNTIxMWU2ZDEzOTM4YTVjODRiOTRiMTUyMWExYjRkNTVjYiJ9fX0="}]}},count:1,id:"minecraft:player_head"},legs:{components:{"minecraft:attribute_modifiers":[]},count:1,id:"minecraft:air"},mainhand:{components:{"minecraft:custom_data":{LegacySkill:108},"minecraft:enchantment_glint_override":1b,"minecraft:item_model":"wnkm:appearance/carrot_on_a_stick/108"},count:1,id:"minecraft:carrot_on_a_stick"}},CustomName:{bold:1b,color:"yellow",text:"暴虐の雷鳴 デトネイター"},DeathLootTable:"empty"}

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
summon minecraft:lightning_bolt 0 10 0 {Tags:["wnkm.owned","wnkm.round"]}
summon minecraft:lightning_bolt 0 10 0 {Tags:["wnkm.owned","wnkm.round"]}
effect give @e[tag=detonator] minecraft:luck 1 9 true
tag @e[tag=b1s6target] remove b1s6target
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"  VS 暴虐の雷鳴 デトネイター","color":"yellow","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"  Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"  Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"  Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"  Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}
execute if score #difficult counter matches 4 run function wancomatter:boss/detonator/lunatic

execute if entity @e[tag=detonator,tag=first] run team join Enemy @e[tag=detonator,tag=first]
tag @e[tag=detonator,tag=first] remove first
