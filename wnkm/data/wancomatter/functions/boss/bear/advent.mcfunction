kill @e[tag=bear]
summon minecraft:polar_bear 0 9 0 {Tags:["mob","bear","bear_p","boss","first"],Team:"white",CustomName:'{"text":"凛冽に佇む親子愛 くま","color":"aqua","bold":true}',Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.attack_damage",Base:12d},{Name:"generic.knockback_resistance",Base:0.5d},{Name:"generic.attack_knockback",Base:5.0d},{Name:"generic.follow_range",Base:100d},{Name:"generic.armor_toughness",Base:20d}],CustomNameVisible:1b,PersistenceRequired:1b,Glowing:1b,DeathLootTable:"empty",HandItems:[{},{}],HandDropChances:[0f,0f],ArmorItems:[{},{},{},{}],ArmorDropChances:[-100f,-100f,-100f,-100f],Passengers:[{id:"minecraft:polar_bear",Tags:["bear","bear_sleep","boss"],Age:-2147483648,Invulnerable:1b}]}
bossbar remove minecraft:bear_p
bossbar remove minecraft:bear_c
bossbar add minecraft:bear_p {"text":"凛冽に佇む親子愛 くま","color":"aqua","bold":true}
scoreboard players set @e[tag=first] damageTaken 0
scoreboard players set @e[tag=first] maxHP 3000
scoreboard players set #dummy counter -1
execute as @a[team=!z_spectate] run scoreboard players add #dummy counter 1
execute as @e[tag=first] run scoreboard players operation #dummy counter *= @s maxHP
scoreboard players operation #dummy counter /= #8 counter
execute as @e[tag=first] run scoreboard players operation @s maxHP += #dummy counter
scoreboard players reset #dummy
scoreboard players set @e[tag=first] Cooldown2 320
scoreboard players set @e[tag=first] Cooldown3 240
scoreboard players set @e[tag=first] Cooldown4 30
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
execute unless score #difficult counter matches 2..4 as @e[tag=first] run attribute @s generic.armor base set 7
execute if score #difficult counter matches 2 as @e[tag=first] run attribute @s generic.armor base set 11
execute if score #difficult counter matches 3 as @e[tag=first] run attribute @s generic.armor base set 15
execute if score #difficult counter matches 4 as @e[tag=first] run attribute @s generic.armor base set 18
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

fill 30 5 2 47 5 -2 minecraft:air
fill 29 9 2 29 6 -2 minecraft:snow_block keep
playsound minecraft:entity.wither.spawn master @a 0 -100 0 0 0.8 1
effect give @e[tag=bear] minecraft:luck 1 9 true
tellraw @a ["",{"text":"--------------------------------\n","italic":false,"color":"gray"},{"text":"[BOSSBATTLE]\n","color":"aqua","bold":true},{"text":"\u0020\u0020VS 凛冽に佇む親子愛 くま","color":"aqua","bold":true}]
execute unless score #difficult counter matches 2..4 run tellraw @a {"text":"\u0020\u0020Difficulty: Easy","color":"green"}
execute if score #difficult counter matches 2 run tellraw @a {"text":"\u0020\u0020Difficulty: Normal","color":"aqua"}
execute if score #difficult counter matches 3 run tellraw @a {"text":"\u0020\u0020Difficulty: Hard","color":"red"}
execute if score #difficult counter matches 4 run tellraw @a {"text":"\u0020\u0020Difficulty: Lunatic","color":"dark_red"}
tellraw @a {"text":"--------------------------------","italic":false,"color":"gray"}
#execute if score #difficult counter matches 4 run function wancomatter:boss/bear/lunatic

execute if entity @e[tag=bear,tag=first] run team join Enemy @e[tag=bear,tag=first]
tag @e[tag=bear,tag=first] remove first

