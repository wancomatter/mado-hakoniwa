execute if score #difficult counter matches 4 run scoreboard players set @s counter 4
execute unless score #difficult counter matches 4 run scoreboard players set @s counter 0
scoreboard players add @s subcounter2 1
execute if score @s subcounter2 matches 2.. run scoreboard players set @s subcounter2 0

#レーザー用のアマスタ召喚
summon armor_stand ~ ~ ~ {Tags:["first","necro_s14_razer"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[0f,0f]}
scoreboard players operation @e[tag=first,limit=1] subcounter2 = @s subcounter2

#ランダム角度
loot spawn 0 0 0 loot wancomatter:random/0-360
execute store result entity @e[tag=first,limit=1] Rotation[0] float 0.01 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 100
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]

#タグ除去
tag @e[tag=first] remove first

