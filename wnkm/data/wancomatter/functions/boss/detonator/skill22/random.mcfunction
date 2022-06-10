loot spawn 0 -10 0 loot wancomatter:random/half
execute store result score #dummy dummy run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.randomID
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
execute at @e[tag=b1s22stand] run summon armor_stand ~ 9.2 ~ {Tags:["b1s22thunder","this"],Marker:1b,Invisible:1b,NoGravity:1b}
execute if score #dummy dummy matches 1 as @e[tag=this] at @s facing entity @r[scores={maxHP=1..}] feet run tp @s ~ 9.2 ~ ~ 0
execute if score #dummy dummy matches 1 as @e[tag=this] store result score @s subcounter run data get entity @s Rotation[0] 10
loot spawn 0 0 0 loot wancomatter:random/0-360
execute if score #dummy dummy matches 1 as @e[tag=this] store result score @s subcounter2 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 0.3334
execute if score #dummy dummy matches 1 as @e[tag=this] run scoreboard players remove @s subcounter2 60
execute if score #dummy dummy matches 1 as @e[tag=this] store result entity @s Rotation[0] float 0.1 run scoreboard players operation @s subcounter += @s subcounter2
execute unless score #dummy dummy matches 1 as @e[tag=this] store result entity @s Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 1
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]
execute as @e[tag=this] at @s run function wancomatter:boss/detonator/skill22/line
playsound minecraft:entity.wither.shoot master @a 0 -100 0 0 2 1
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @e[tag=this] remove this