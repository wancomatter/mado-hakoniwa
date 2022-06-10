tag @e[tag=bear,tag=!bear_c] add old-bear
execute unless entity @s[tag=bear_reborned] run summon minecraft:polar_bear ~ ~ ~ {Tags:["mob","bear","bear_p","boss","first","usedskill"],Team:"white",CustomName:'{"text":"凛冽に佇む親子愛 くま","color":"aqua","bold":true}',Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.attack_damage",Base:12d},{Name:"generic.knockback_resistance",Base:0.5d},{Name:"generic.attack_knockback",Base:5.0d},{Name:"generic.follow_range",Base:100d},{Name:"generic.armor_toughness",Base:20d}],CustomNameVisible:1b,PersistenceRequired:1b,Glowing:1b,DeathLootTable:"empty",HandItems:[{},{}],HandDropChances:[0f,0f],ArmorItems:[{},{},{},{}],ArmorDropChances:[-100f,-100f,-100f,-100f],Passengers:[{id:"minecraft:polar_bear",Tags:["bear","bear_sleep","boss"],Age:-2147483648,Invulnerable:1b}]}
execute if entity @s[tag=bear_reborned] run summon minecraft:polar_bear ~ ~ ~ {Tags:["mob","bear","bear_p","bear_reborned","boss","first"],Team:"white",CustomName:'{"text":"凛冽に佇む親子愛 くま","color":"aqua","bold":true}',Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.attack_damage",Base:12d},{Name:"generic.knockback_resistance",Base:0.5d},{Name:"generic.attack_knockback",Base:5.0d},{Name:"generic.follow_range",Base:100d},{Name:"generic.armor_toughness",Base:20d}],CustomNameVisible:1b,PersistenceRequired:1b,Glowing:1b,DeathLootTable:"empty",HandItems:[{},{}],HandDropChances:[0f,0f],ArmorItems:[{},{},{},{}],ArmorDropChances:[-100f,-100f,-100f,-100f]}
scoreboard players set @e[tag=first] damageTaken 0
execute unless score #difficult counter matches 2..4 as @e[tag=first] run attribute @s generic.armor base set 7
execute if score #difficult counter matches 2 as @e[tag=first] run attribute @s generic.armor base set 11
execute if score #difficult counter matches 3 as @e[tag=first] run attribute @s generic.armor base set 15
execute if score #difficult counter matches 4 as @e[tag=first] run attribute @s generic.armor base set 18
scoreboard players operation @e[tag=first] magicResist = @s magicResist


scoreboard players operation @e[tag=first,limit=1] counter = @s counter
scoreboard players operation @e[tag=first,limit=1] subcounter = @s subcounter
scoreboard players operation @e[tag=first,limit=1] Mana = @s Mana
scoreboard players operation @e[tag=first,limit=1] maxMana = @s maxMana
scoreboard players operation @e[tag=first,limit=1] Cooldown1 = @s Cooldown1
scoreboard players operation @e[tag=first,limit=1] Cooldown2 = @s Cooldown2
scoreboard players operation @e[tag=first,limit=1] Cooldown3 = @s Cooldown3
scoreboard players operation @e[tag=first,limit=1] Cooldown4 = @s Cooldown4
scoreboard players operation @e[tag=first,limit=1] Cooldown5 = @s Cooldown5
scoreboard players operation @e[tag=first,limit=1] Cooldown6 = @s Cooldown6
scoreboard players operation @e[tag=first,limit=1] Cooldown7 = @s Cooldown7
scoreboard players operation @e[tag=first,limit=1] Cooldown8 = @s Cooldown8
scoreboard players operation @e[tag=first,limit=1] Cooldown9 = @s Cooldown9
scoreboard players operation @e[tag=first,limit=1] Cooldown1_max = @s Cooldown1_max
scoreboard players operation @e[tag=first,limit=1] Cooldown2_max = @s Cooldown2_max
scoreboard players operation @e[tag=first,limit=1] Cooldown3_max = @s Cooldown3_max
scoreboard players operation @e[tag=first,limit=1] Cooldown4_max = @s Cooldown4_max
scoreboard players operation @e[tag=first,limit=1] Cooldown5_max = @s Cooldown5_max
scoreboard players operation @e[tag=first,limit=1] Cooldown6_max = @s Cooldown6_max
scoreboard players operation @e[tag=first,limit=1] Cooldown7_max = @s Cooldown7_max
scoreboard players operation @e[tag=first,limit=1] Cooldown8_max = @s Cooldown8_max
scoreboard players operation @e[tag=first,limit=1] Cooldown9_max = @s Cooldown9_max
scoreboard players operation @e[tag=first,limit=1] HP = @s HP
scoreboard players operation @e[tag=first,limit=1] maxHP = @s maxHP
data modify entity @e[tag=first,limit=1] ActiveEffects set from entity @s ActiveEffects

execute unless entity @e[tag=must-target,limit=1] if entity @a[sort=nearest,limit=1,gamemode=!spectator] as @a[sort=nearest,gamemode=!spectator] run tag @s add must-target
execute if entity @e[tag=must-target,limit=1] run summon snowball ~ ~1.9 ~ {Tags:["this"],Motion:[0.0d,-10.0d,0.0d]}
execute if entity @e[tag=must-target,limit=1] run data modify entity @e[type=snowball,tag=this,limit=1] Owner set from entity @e[tag=must-target,limit=1,sort=nearest] UUID
execute if entity @e[tag=must-target,limit=1] facing entity @e[tag=must-target,limit=1] feet run tp @e[tag=first] ~ ~ ~ ~ ~
execute if entity @e[tag=must-target,limit=1] run tag @e[tag=must-target] remove must-target
tag @e[tag=this] remove this

tag @e[tag=first] remove first
tp @e[tag=old-bear] 0 -100 0
data merge entity @s {DeathTime:19s}
kill @e[tag=old-bear]
kill @s