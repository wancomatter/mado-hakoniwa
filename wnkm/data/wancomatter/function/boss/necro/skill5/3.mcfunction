summon minecraft:zombified_piglin ~ ~ ~ {Health:1000.0f,NoGravity:1b,Silent:0b,Tags:["mob","undead","first","necro_s5pigman","wnkm.owned","wnkm.round"],Team:"Purple",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:7.0d,id:"minecraft:attack_damage"},{base:0.225d,id:"minecraft:movement_speed"},{base:60.0d,id:"minecraft:follow_range"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},equipment:[{},{},{},{}]}
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
