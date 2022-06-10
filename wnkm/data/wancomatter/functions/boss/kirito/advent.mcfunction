kill @e[tag=kirito]
kill @e[tag=kiritostand]
summon minecraft:husk 0 7 0 {Tags:["mob","undead","type_zombie","kirito","boss","first"],Team:"Black",CustomName:"{\"text\":\"キリト\",\"color\":\"black\",\"bold\":true}",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:-10d},{Name:"generic.knockback_resistance",Base:1.0d},{Name:"generic.follow_range",Base:100d}],PersistenceRequired:1b,Silent:1b,DeathLootTable:"empty"}
effect give @e[tag=first] minecraft:invisibility 1000000 127 true
scoreboard players set @e[tag=first] damageTaken 0
scoreboard players set @e[tag=first] maxHP 5000
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s Mana = @s maxHP
execute as @e[tag=first] run scoreboard players operation @s Mana /= #2 counter

bossbar remove minecraft:kirito
bossbar add minecraft:kirito {"text":"漆黒の剣士","color":"white","bold":true}
bossbar set minecraft:kirito color purple
execute store result bossbar minecraft:kirito max run scoreboard players get @e[tag=first,limit=1] maxHP
execute store result bossbar minecraft:kirito value run scoreboard players get @e[tag=first,limit=1] HP
bossbar set minecraft:kirito style notched_12
bossbar set minecraft:kirito visible true
bossbar set minecraft:kirito players @a
tag @e[tag=first] remove first

function wancomatter:boss/kirito/amst
playsound minecraft:entity.wither.spawn master @a 0 -100 0 0 0.8 1
effect give @e[tag=kirito] minecraft:luck 1 9 true
tag @e[tag=b1s6target] remove b1s6target
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"\u0020\u0020VS 漆黒の剣士","color":"dark_gray","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"\u0020\u0020Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"\u0020\u0020Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"\u0020\u0020Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"\u0020\u0020Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}

tag @e[tag=kirito,tag=first] remove first