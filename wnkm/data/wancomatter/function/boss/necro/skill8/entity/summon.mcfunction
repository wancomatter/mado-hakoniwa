#ランダムpos生成からウィザ助を召喚
loot spawn 0.0 0.0 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] add necro_s8pos
execute as @e[tag=necro_s8pos,limit=1] store result entity @s Pos[0] double 1 run data get entity @s Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1"}].amount 0.45
execute as @e[tag=necro_s8pos,limit=1] store result entity @s Pos[2] double 1 run data get entity @s Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.2"}].amount 0.45
execute at @e[tag=necro_s8pos] run summon wither_skeleton ~0.5 4.0 ~0.5 {Health:1000.0f,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["mob","undead","first","necro_s8skeleton","wither_skeleton_sound","wnkm.owned","wnkm.round"],Team:"Purple",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:7.0d,id:"minecraft:attack_damage"},{base:0.225d,id:"minecraft:movement_speed"},{base:60.0d,id:"minecraft:follow_range"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},equipment:[{},{},{},{}]}
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
