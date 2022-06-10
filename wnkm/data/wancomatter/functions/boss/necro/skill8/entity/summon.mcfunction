#ランダムpos生成からウィザ助を召喚
loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] add necro_s8pos
execute as @e[tag=necro_s8pos,limit=1] store result entity @s Pos[0] double 1 run data get entity @s Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 0.45
execute as @e[tag=necro_s8pos,limit=1] store result entity @s Pos[2] double 1 run data get entity @s Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 0.45
execute at @e[tag=necro_s8pos] run summon wither_skeleton ~0.5 4.0 ~0.5 {Tags:["mob","undead","first","necro_s8skeleton","wither_skeleton_sound"],Health:1000f,Team:"Purple",Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.attack_damage",Base:7.0d},{Name:"generic.movement_speed",Base:0.225d},{Name:"generic.follow_range",Base:60d}],HandItems:[{},{}],ArmorItems:[{},{},{},{}],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f],Silent:1b,Invulnerable:1b,NoAI:1b}
kill @e[tag=necro_s8pos]

#ウィザ助の召喚設定
execute as @e[tag=first] at @s facing 0.5 4.0 0.5 run tp @s ~ ~ ~ ~180 0
effect give @e[tag=first] luck 3 9 true
scoreboard players set @e[tag=first] maxHP 1
scoreboard players set @e[tag=first] HP 1
scoreboard players set @e[tag=first] subcounter 61
scoreboard players operation @e[tag=first] teamNumber = #necroBoss teamNumber
execute if score #difficult counter matches 2 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.250d
execute if score #difficult counter matches 3 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.275d
execute if score #difficult counter matches 4 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.300d
execute if score #difficult counter matches 4 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.attack_damage"}].Base set value 10.0d
tag @e[tag=first] remove first
