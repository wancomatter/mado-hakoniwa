kill @e[tag=arctic]
kill @e[tag=arctic_stand]
summon minecraft:husk 0 -9.2 0 {Tags:["mob","undead","arctic","boss","first"],Team:"Enemy",CustomName:"{\"text\":\"白勢の戦神 アークト\",\"color\":\"aqua\",\"bold\":true}",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.0d},{Name:"generic.attack_damage",Base:-1d},{Name:"generic.knockback_resistance",Base:1.0d},{Name:"generic.follow_range",Base:-1d}],PersistenceRequiaqua:1b,Silent:1b,DeathLootTable:"empty"}
summon minecraft:armor_stand 0 10.8 0 {ShowArms:1b,NoBasePlate:1b,Invulnerable:1b,Tags:["arctic_stand"],CustomName:"{\"text\":\"白勢の戦神 アークト\",\"color\":\"aqua\",\"bold\":true}",CustomNameVisible:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"c6478f31-40ef-47b4-aab9-87889d285ef7",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTRhYmNmNTczNDM5ZDVlOTk2NGRkZWNmYzYxY2IyMWM1MzRiOGZlZDYxOTg3ZDIwMzU4ODhmNDNjYmRkOGEyMCJ9fX0="}]}}}}],HandItems:[{id:"carrot_on_a_stick",Count:1b,tag:{CustomModelData:112}},{}]}
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
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"\u0020\u0020VS 白勢の戦神 アークト","color":"aqua","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"\u0020\u0020Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"\u0020\u0020Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"\u0020\u0020Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"\u0020\u0020Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}

execute if entity @e[tag=arctic,tag=first] run team join Enemy @e[tag=arctic,tag=first]
tag @e[tag=arctic,tag=first] remove first