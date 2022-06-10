summon minecraft:zombified_piglin ~ ~ ~ {Tags:["mob","undead","first","necro_s5pigman"],Health:1000f,Team:"Purple",Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.attack_damage",Base:7.0d},{Name:"generic.movement_speed",Base:0.225d},{Name:"generic.follow_range",Base:60d}],HandItems:[{},{}],ArmorItems:[{},{},{},{}],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f],Silent:0b,NoGravity:1b}
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.4 52 normal @a
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.4 13 force @a
playsound minecraft:entity.wither.shoot master @a ~ ~1 ~ 2.3 2

scoreboard players operation @e[tag=first] dummy = @s counter
scoreboard players operation @e[tag=first] dummy %= #2 counter
execute as @e[tag=first] run tp @s ~ ~ ~ ~ 0
scoreboard players set @e[tag=first] maxHP 40
scoreboard players set @e[tag=first] HP 40
scoreboard players operation @e[tag=first] teamNumber = #necroBoss teamNumber
tag @e[tag=first] remove first


tp @s ^-1 ^ ^
execute store result entity @e[tag=necro_stand_r,limit=1] Pose.Head[1] float 1 run scoreboard players add @s subcounter 10
