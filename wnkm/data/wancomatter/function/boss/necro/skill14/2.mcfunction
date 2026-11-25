execute if score #difficult counter matches 4 run scoreboard players set @s counter 4
execute unless score #difficult counter matches 4 run scoreboard players set @s counter 0
scoreboard players add @s subcounter2 1
execute if score @s subcounter2 matches 2.. run scoreboard players set @s subcounter2 0

#レーザー用のアマスタ召喚
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Rotation:[0.0f,0.0f],Tags:["first","necro_s14_razer","wnkm.owned","wnkm.round"]}
scoreboard players operation @e[tag=first,limit=1] subcounter2 = @s subcounter2

#ランダム角度
loot spawn 0 0 0 loot wancomatter:random/0-360
execute store result entity @e[tag=first,limit=1] Rotation[0] float 0.01 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount 100
kill @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}}]

#タグ除去
tag @e[tag=first] remove first
