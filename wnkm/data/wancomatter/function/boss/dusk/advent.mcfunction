kill @e[tag=dusk]
summon minecraft:stray 0 9.8 0 {CustomNameVisible:1b,Glowing:1b,Health:1000.0f,PersistenceRequired:1b,Silent:1b,Tags:["mob","undead","dusk","boss","first","wnkm.owned","wnkm.round"],Team:"Enemy",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.24d,id:"minecraft:movement_speed"},{base:10.0d,id:"minecraft:attack_damage"},{base:0.9d,id:"minecraft:knockback_resistance"},{base:100.0d,id:"minecraft:follow_range"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:0.0f,offhand:0.0f},equipment:{chest:{components:{"minecraft:attribute_modifiers":[],"minecraft:dyed_color":10689564},count:1,id:"minecraft:leather_chestplate"},head:{components:{"minecraft:attribute_modifiers":[{amount:6.0d,id:"minecraft:00000000-3214-473e-0000-00003214473e",operation:"add_value",slot:"head",type:"minecraft:armor"}],"minecraft:profile":{id:[I;1274974332,-1442925911,-779908940,1694896209],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2NGViOGU5OWUyODc4ZjM0MzgwM2E3NDJlZjU3Y2VhZmFjYzIyODNlNjdiODhlZGVjMTY4MjEzMTZmOWYifX19"}]}},count:1,id:"minecraft:player_head"},mainhand:{components:{"minecraft:custom_data":{LegacySkill:1003},"minecraft:enchantment_glint_override":1b,"minecraft:item_model":"wnkm:appearance/iron_hoe/1003"},count:1,id:"minecraft:iron_hoe"}},CustomName:{bold:1b,color:"red",text:"終焉の炎霊 ダスク"},DeathLootTable:"empty"}
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
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"  VS 終焉の炎霊 ダスク","color":"red","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"  Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"  Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"  Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"  Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}

execute if entity @e[tag=dusk,tag=first] run team join Enemy @e[tag=dusk,tag=first]
tag @e[tag=dusk,tag=first] remove first
