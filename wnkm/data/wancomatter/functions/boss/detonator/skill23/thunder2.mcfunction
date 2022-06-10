execute at @e[tag=b1s23stand] run summon armor_stand ~ ~ ~ {Tags:["b1s22thunder","this"],Marker:1b,Invisible:1b,NoGravity:1b}
tag @s add b1s23target
execute as @e[tag=this] at @s facing entity @a[tag=b1s23target,limit=1] feet run tp @s ~ ~ ~ ~ ~
tag @s remove b1s23target
#execute at @s run summon armor_stand ~ ~0.5 ~ {Tags:["b1s23target"],Marker:1b,Invisible:1b,NoGravity:1b}
#execute as @e[tag=this] at @s facing entity @a[tag=b1s23target,limit=1] feet run tp @s ~ 9.2 ~ ~ ~
#kill @e[tag=b1s23target]
execute as @e[tag=this] store result score @s subcounter run data get entity @s Rotation[0] 10
loot spawn 0 0 0 loot wancomatter:random/0-360
execute as @e[tag=this] store result score @s subcounter2 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 0.3334
execute as @e[tag=this] run scoreboard players remove @s subcounter2 60
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]
execute as @e[tag=this] store result entity @s Rotation[0] float 0.1 run scoreboard players operation @s subcounter += @s subcounter2
execute as @e[tag=this] at @s run function wancomatter:boss/detonator/skill22/line
scoreboard players operation @e[tag=this,limit=1] teamNumber = @s teamNumber
tag @e[tag=this] remove this
