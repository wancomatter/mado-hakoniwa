particle minecraft:poof ~ ~ ~ 0 0 0 1 10 force @a
particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 3 normal @a

playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 4 0.5

execute as @e[limit=5,sort=nearest,scores={maxHP=1..},tag=!dusk] unless score @s teamNumber = @e[tag=dusk,limit=1] teamNumber run tag @s add target
execute positioned as @e[limit=1,sort=nearest,tag=target] run summon area_effect_cloud ~ ~1.0 ~ {Tags:["vector"],Duration:2}
execute unless entity @e[tag=vector,limit=1] positioned as @e[limit=1,sort=nearest,scores={maxHP=1..},tag=!dusk] run summon area_effect_cloud ~ ~1.0 ~ {Tags:["vector"],Duration:2}
tag @e[tag=target] remove target

execute as @e[limit=1,sort=nearest,tag=vector] facing entity @s feet positioned 0.0 0.0 0.0 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=vector,limit=1] store result score @s counter run data get entity @s Rotation[0] 100
#execute as @e[tag=vector,limit=1] store result score @s dummy run data get entity @s UUIDMost 0.0000000000000000019515639104739079812134150415659
execute if score #difficult counter matches 2..4 run loot spawn 0 0 0 loot wancomatter:random/0-360
execute if score #difficult counter matches 2 as @e[tag=vector,limit=1] store result score @s dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 1
execute if score #difficult counter matches 2 as @e[tag=vector,limit=1] run scoreboard players remove @s dummy 180
execute if score #difficult counter matches 3..4 as @e[tag=vector,limit=1] store result score @s dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 1.666666666
execute if score #difficult counter matches 3..4 as @e[tag=vector,limit=1] run scoreboard players remove @s dummy 300
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]
execute as @e[tag=vector,limit=1] store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s counter += @s dummy
execute unless score #difficult counter matches 2..4 as @e[tag=vector,limit=1] at @s run tp @s ^ ^ ^1.5
execute if score #difficult counter matches 2 as @e[tag=vector,limit=1] at @s run tp @s ^ ^ ^2.0
execute if score #difficult counter matches 3 as @e[tag=vector,limit=1] at @s run tp @s ^ ^ ^2.5
execute if score #difficult counter matches 4 as @e[tag=vector,limit=1] at @s run tp @s ^ ^ ^3.0
data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]