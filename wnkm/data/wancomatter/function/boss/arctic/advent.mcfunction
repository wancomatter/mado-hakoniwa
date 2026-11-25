kill @e[tag=arctic]
kill @e[tag=arctic_stand]
summon minecraft:husk 0 -9.2 0 {Health:1000.0f,PersistenceRequiaqua:1b,Silent:1b,Tags:["mob","undead","arctic","boss","first","wnkm.owned","wnkm.round"],Team:"Enemy",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:0.0d,id:"minecraft:movement_speed"},{base:-1.0d,id:"minecraft:attack_damage"},{base:1.0d,id:"minecraft:knockback_resistance"},{base:-1.0d,id:"minecraft:follow_range"}],CustomName:{bold:1b,color:"aqua",text:"白勢の戦神 アークト"},DeathLootTable:"empty"}
summon minecraft:armor_stand 0 10.8 0 {CustomNameVisible:1b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["arctic_stand","wnkm.owned","wnkm.round"],equipment:{chest:{components:{"minecraft:dyed_color":16383998},count:1,id:"minecraft:leather_chestplate"},feet:{components:{"minecraft:dyed_color":16383998},count:1,id:"minecraft:leather_boots"},head:{components:{"minecraft:profile":{id:"c6478f31-40ef-47b4-aab9-87889d285ef7",name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTRhYmNmNTczNDM5ZDVlOTk2NGRkZWNmYzYxY2IyMWM1MzRiOGZlZDYxOTg3ZDIwMzU4ODhmNDNjYmRkOGEyMCJ9fX0="}]}},count:1,id:"minecraft:player_head"},legs:{count:1,id:"minecraft:iron_leggings"},mainhand:{components:{"minecraft:custom_data":{LegacySkill:112},"minecraft:item_model":"wnkm:appearance/carrot_on_a_stick/112"},count:1,id:"minecraft:carrot_on_a_stick"}},CustomName:{bold:1b,color:"aqua",text:"白勢の戦神 アークト"}}
data modify entity @e[tag=arctic_stand,limit=1] Pose.RightArm set value [0.0f,0.0f,0.0f]
data modify entity @e[tag=arctic_stand,limit=1] Pose.LeftArm set value [0.0f,0.0f,0.0f]


bossbar remove minecraft:arctic
effect give @e[tag=first] minecraft:invisibility 1000000 127 true
execute as @e[tag=first] at @s run tp @s ~ ~20 ~

bossbar add arctic {"text":"白勢の戦神 アークト","color":"aqua","bold":true}
scoreboard players set @e[tag=first] damageTaken 0
scoreboard players set @e[tag=first] maxHP 2000
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first] dmgProtection 70
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first] dmgProtection 75
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first] dmgProtection 80
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first] dmgProtection 85
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s Mana = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s Mana /= #2 counter
bossbar set minecraft:arctic color blue
execute store result bossbar minecraft:arctic max run scoreboard players get @e[tag=first,limit=1] maxHP
execute store result bossbar minecraft:arctic value run scoreboard players get @e[tag=first,limit=1] HP
bossbar set minecraft:arctic style notched_12
bossbar set minecraft:arctic visible true
bossbar set minecraft:arctic players @a

playsound minecraft:entity.wither.spawn master @a 0 -100 0 0 0.8 1
execute at @e[tag=arctic] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
execute at @e[tag=arctic] run particle flame ~ ~ ~ 3 3 3 1.4 1000 force @a
playsound minecraft:entity.generic.explode master @a 0 -100 0 0 0.8 1
effect give @e[tag=arctic] minecraft:luck 1 9 true
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"  VS 白勢の戦神 アークト","color":"aqua","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"  Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"  Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"  Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"  Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}

execute if entity @e[tag=arctic,tag=first] run team join Enemy @e[tag=arctic,tag=first]
tag @e[tag=arctic,tag=first] remove first
