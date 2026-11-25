loot spawn 0 -10 0 loot wancomatter:random/half
execute store result score #dummy dummy run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:custom_data".randomID
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}}]
execute at @e[tag=b1s22stand] run summon armor_stand ~ 9.2 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["b1s22thunder","this","wnkm.owned","wnkm.round"]}
execute if score #dummy dummy matches 1 as @e[tag=this] at @s facing entity @r[scores={maxHP=1..}] feet run tp @s ~ 9.2 ~ ~ 0
execute if score #dummy dummy matches 1 as @e[tag=this] store result score @s subcounter run data get entity @s Rotation[0] 10
loot spawn 0 0 0 loot wancomatter:random/0-360
execute if score #dummy dummy matches 1 as @e[tag=this] store result score @s subcounter2 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount 0.3334
execute if score #dummy dummy matches 1 as @e[tag=this] run scoreboard players remove @s subcounter2 60
execute if score #dummy dummy matches 1 as @e[tag=this] store result entity @s Rotation[0] float 0.1 run scoreboard players operation @s subcounter += @s subcounter2
execute unless score #dummy dummy matches 1 as @e[tag=this] store result entity @s Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount 1
kill @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}}]
execute as @e[tag=this] at @s run function wancomatter:boss/detonator/skill22/line
playsound minecraft:entity.wither.shoot master @a 0 -100 0 0 2 1
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @e[tag=this] remove this
