particle minecraft:poof ~ ~ ~ 0 0 0 1 10 force @a
particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 3 normal @a

playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 5 0.5

execute positioned as @a[limit=1,sort=nearest,gamemode=!spectator,gamemode=!creative] run summon area_effect_cloud ~ ~1.0 ~ {Tags:["vector"],Duration:2}
execute unless entity @e[tag=vector,limit=1] positioned as @a[limit=1,sort=nearest] run summon area_effect_cloud ~ ~1.0 ~ {Tags:["vector"],Duration:2}

execute as @e[limit=1,sort=nearest,tag=vector] facing entity @s feet positioned 0.0 0.0 0.0 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=vector,limit=1] store result score @s counter run data get entity @s Rotation[0] 100
loot spawn ~ -10 ~ loot wancomatter:random/250
execute unless score #difficult counter matches 2..4 as @e[tag=vector] store result score @s dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.250"}].Amount 1.5
execute if score #difficult counter matches 2 as @e[tag=vector] store result score @s dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.250"}].Amount 3.0
execute if score #difficult counter matches 3 as @e[tag=vector] store result score @s dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.250"}].Amount 4.5
execute if score #difficult counter matches 4 as @e[tag=vector] store result score @s dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.250"}].Amount 6.0
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}}]
execute as @e[tag=vector,limit=1] store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s counter += @s dummy
execute as @e[tag=vector,limit=1] at @s run tp @s ^ ^ ^1
data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]