execute as @e[tag=detonator] run tag @s add old-detonator
summon minecraft:stray ~ ~ ~ {Tags:["mob","undead","detonator","boss","first"],Team:"Yellow",CustomName:'{"text":"暴虐の雷鳴 デトネイター","color":"yellow","bold":true}',Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.attack_damage",Base:12d},{Name:"generic.knockback_resistance",Base:0.9d},{Name:"generic.follow_range",Base:100d}],CustomNameVisible:1b,PersistenceRequired:1b,Silent:1b,Glowing:1b,DeathLootTable:"empty",HandItems:[{tag:{CustomModelData:108,Enchantments:[{}]},id:"minecraft:carrot_on_a_stick",Count:1b},{}],HandDropChances:[0f,0f],ArmorItems:[{tag:{AttributeModifiers:[{}]},id:"minecraft:air",Count:1b},{tag:{AttributeModifiers:[{}]},id:"minecraft:air",Count:1b},{tag:{AttributeModifiers:[{}]},id:"minecraft:diamond_chestplate",Count:1b},{tag:{AttributeModifiers:[{Name:"HaruEditor",UUID:[I;0,0,0,0],Operation:0,AttributeName:"generic.armor",Amount:6d,Slot:"head"}],SkullOwner:{Id:[I;1,2,3,4],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDFhNTk1MDczZjMwNDlhZDUwYmZmMThlYjlhNTQwNTIxMWU2ZDEzOTM4YTVjODRiOTRiMTUyMWExYjRkNTVjYiJ9fX0="}]}}},id:"minecraft:player_head",Count:1b}],ArmorDropChances:[-100f,-100f,-100f,-100f]}
execute as @e[tag=old-detonator] if entity @s[team=Enemy] run team join Enemy @e[tag=detonator,tag=first]
execute as @e[tag=old-detonator] if entity @s[team=Red] run team join Red @e[tag=detonator,tag=first]
execute as @e[tag=old-detonator] if entity @s[team=Blue] run team join Blue @e[tag=detonator,tag=first]
execute as @e[tag=old-detonator] if entity @s[team=Player] run team join Player @e[tag=detonator,tag=first]
scoreboard players operation @e[tag=detonator,tag=first,limit=1] teamNumber = @e[tag=old-detonator,limit=1] teamNumber

scoreboard players set @e[tag=detonator,tag=first] damageTaken 0
execute unless score @e[tag=old-detonator,limit=1] counter matches 98.. run scoreboard players operation @e[tag=detonator,tag=first,limit=1] counter = @e[tag=old-detonator,limit=1] counter
scoreboard players operation @e[tag=detonator,tag=first,limit=1] subcounter = @e[tag=old-detonator,limit=1] subcounter
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown1 = @e[tag=old-detonator,limit=1] Cooldown1
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown2 = @e[tag=old-detonator,limit=1] Cooldown2
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown3 = @e[tag=old-detonator,limit=1] Cooldown3
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown4 = @e[tag=old-detonator,limit=1] Cooldown4
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown5 = @e[tag=old-detonator,limit=1] Cooldown5
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown6 = @e[tag=old-detonator,limit=1] Cooldown6
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown7 = @e[tag=old-detonator,limit=1] Cooldown7
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown8 = @e[tag=old-detonator,limit=1] Cooldown8
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown9 = @e[tag=old-detonator,limit=1] Cooldown9
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown1_max = @e[tag=old-detonator,limit=1] Cooldown1_max
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown2_max = @e[tag=old-detonator,limit=1] Cooldown2_max
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown3_max = @e[tag=old-detonator,limit=1] Cooldown3_max
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown4_max = @e[tag=old-detonator,limit=1] Cooldown4_max
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown5_max = @e[tag=old-detonator,limit=1] Cooldown5_max
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown6_max = @e[tag=old-detonator,limit=1] Cooldown6_max
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown7_max = @e[tag=old-detonator,limit=1] Cooldown7_max
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown8_max = @e[tag=old-detonator,limit=1] Cooldown8_max
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Cooldown9_max = @e[tag=old-detonator,limit=1] Cooldown9_max
scoreboard players operation @e[tag=detonator,tag=first,limit=1] HP = @e[tag=old-detonator,limit=1] HP
scoreboard players operation @e[tag=detonator,tag=first,limit=1] maxHP = @e[tag=old-detonator,limit=1] maxHP
scoreboard players operation @e[tag=detonator,tag=first,limit=1] Mana = @e[tag=old-detonator,limit=1] Mana
scoreboard players operation @e[tag=detonator,tag=first,limit=1] maxMana = @e[tag=old-detonator,limit=1] maxMana
data modify entity @e[tag=detonator,tag=first,limit=1] ActiveEffects set from entity @e[tag=old-detonator,limit=1] ActiveEffects
execute if entity @e[tag=old-detonator,tag=b1s4] run tag @e[tag=detonator,tag=first,limit=1] add b1s4
execute if entity @e[tag=old-detonator,tag=b1s5] run tag @e[tag=detonator,tag=first,limit=1] add b1s5
execute if entity @e[tag=old-detonator,tag=b1s21] run tag @e[tag=detonator,tag=first,limit=1] add b1s21
execute if entity @e[tag=old-detonator,tag=b1s21used] run tag @e[tag=detonator,tag=first,limit=1] add b1s21used
execute if entity @e[tag=old-detonator,tag=b1s22] run tag @e[tag=detonator,tag=first,limit=1] add b1s22
execute if entity @e[tag=old-detonator,tag=b1s22used] run tag @e[tag=detonator,tag=first,limit=1] add b1s22used
execute if data entity @e[tag=old-detonator,limit=1] {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0d}]} run data modify entity @e[tag=detonator,tag=first,limit=1] Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0d

execute if entity @a[sort=nearest,gamemode=!spectator] as @a[sort=nearest,gamemode=!spectator] unless score #dummy teamNumber = @s teamNumber run tag @s add detonator-target
execute if entity @e[tag=detonator-target] run summon snowball ~ ~3.3 ~ {Tags:["discharge2"],Motion:[0.0d,-10.0d,0.0d]}
execute if entity @e[tag=detonator-target] run data modify entity @e[type=snowball,tag=discharge2,limit=1] Owner set from entity @e[tag=detonator-target,limit=1,sort=nearest] UUID
execute if entity @e[tag=detonator-target] facing entity @e[tag=detonator-target,limit=1] feet run tp @e[tag=detonator,tag=first] ~ ~ ~ ~ ~
tag @e[tag=discharge2] remove discharge2
execute if entity @e[tag=detonator_skill2_shot,limit=1] if score #difficult counter matches 2..4 run function wancomatter:boss/detonator/skill2/shot
tag @e[tag=detonator-target] remove detonator-target

tag @e[tag=detonator,tag=first] remove first
tp @e[tag=old-detonator] 0 -100 0
data merge entity @e[tag=old-detonator,limit=1] {DeathTime:19s}
kill @e[tag=old-detonator]
execute as @e[tag=detonator] at @s if score @s HP matches ..4000 unless score @s Cooldown4 matches 1.. run function wancomatter:boss/detonator/skill4/discharge
kill @s