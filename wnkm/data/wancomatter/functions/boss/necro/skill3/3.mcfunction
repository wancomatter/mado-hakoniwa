scoreboard players remove @s Mana 1
scoreboard players set @s subcounter2 0

#演出
particle flash ~ ~ ~ 0 0 0 1 1 force @a
particle explosion ~ ~ ~ 0 0 0 1 1 force @a
particle cloud ~ ~ ~ 0 0 0 0.4 80 normal @a
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 3 2

#召喚
summon zombie ~ ~ ~ {Tags:["mob","undead","first","necro_s3zombie","zombie_sound"],Team:"Purple",Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.attack_damage",Base:6.0d},{Name:"generic.movement_speed",Base:0.23d},{Name:"generic.armor",Base:1.0d}],HandItems:[{},{}],ArmorItems:[{},{},{},{}],HandDropChances:[-100f,-100f],ArmorDropChances:[-100f,-100f,-100f,-100f]}
scoreboard players set @e[tag=first] maxHP 160
execute as @e[tag=first] run scoreboard players operation @s HP = @s maxHP
scoreboard players operation @e[tag=first] teamNumber = #necroBoss teamNumber
execute if score #difficult counter matches 2 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.276d
execute if score #difficult counter matches 3 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.322d
execute if score #difficult counter matches 4 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.368d
execute if score #difficult counter matches 4 as @e[tag=first] run data modify entity @s Attributes[{Name:"generic.attack_damage"}].Base set value 7.0d

#ランダムベクトル代入
loot spawn 0.0 0.7 0.0 loot wancomatter:random/2.-50_49
tag @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] add vector
execute as @e[tag=vector,limit=1] store result entity @s Pos[0] double 0.0008 run data get entity @s Item.tag.AttributeModifiers[{Name:"rand.1"}].Amount 20
execute as @e[tag=vector,limit=1] store result entity @s Pos[2] double 0.0008 run data get entity @s Item.tag.AttributeModifiers[{Name:"rand.2"}].Amount 20
data modify entity @e[tag=first,limit=1,sort=nearest] Motion set from entity @e[tag=vector,limit=1] Pos

#後処理
kill @e[type=item,tag=vector]
tag @e[tag=first] remove first
