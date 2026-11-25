scoreboard players remove @s Mana 1
scoreboard players set @s subcounter2 0

#演出
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0 0 0 1 1 force @a
particle explosion ~ ~ ~ 0 0 0 1 1 force @a
particle cloud ~ ~ ~ 0 0 0 0.4 80 normal @a
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 3 2

#召喚
summon zombie ~ ~ ~ {Health:1000.0f,Tags:["mob","undead","first","necro_s3zombie","zombie_sound","wnkm.owned","wnkm.round"],Team:"Purple",attributes:[{base:1000.0d,id:"minecraft:max_health"},{base:6.0d,id:"minecraft:attack_damage"},{base:0.23d,id:"minecraft:movement_speed"},{base:1.0d,id:"minecraft:armor"}],drop_chances:{chest:-100.0f,feet:-100.0f,head:-100.0f,legs:-100.0f,mainhand:-100.0f,offhand:-100.0f},equipment:[{},{},{},{}]}
scoreboard players set @e[tag=first] maxHP 160
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
scoreboard players operation @e[tag=first] teamNumber = #necroBoss teamNumber
execute if score #difficult counter matches 2 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.276d
execute if score #difficult counter matches 3 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.322d
execute if score #difficult counter matches 4 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.368d
execute if score #difficult counter matches 4 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.attack_damage"}].Base set value 7.0d

#ランダムベクトル代入
loot spawn 0.0 0.7 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] add vector
execute as @e[tag=vector,limit=1] store result entity @s Pos[0] double 0.0008 run data get entity @s Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1"}].amount 20
execute as @e[tag=vector,limit=1] store result entity @s Pos[2] double 0.0008 run data get entity @s Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.2"}].amount 20
data modify entity @e[tag=first,limit=1,sort=nearest] Motion set from entity @e[tag=vector,limit=1] Pos

#後処理
kill @e[type=item,tag=vector]
tag @e[tag=first] remove first
