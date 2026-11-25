summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Tags:["this","b3s22fire","wnkm.owned","wnkm.round"]}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ~ ~2 ~ {Duration:2,Tags:["vector","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
loot spawn 0 0 0 loot wancomatter:random/2.-50_49
execute as @e[tag=vector] store result entity @s Rotation[0] float 0.1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1"}].amount 72
execute as @e[tag=vector] store result score @s dummy run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.2"}].amount 7.6
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1]
execute as @e[tag=vector] if score @s dummy matches ..-1 at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=vector] if score @s dummy matches ..-1 run scoreboard players operation @s dummy *= #-1 counter
execute as @e[tag=vector] at @s run function wancomatter:operation/0.01tp
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 5 0.5

#scoreboard players add @s dummy 1
#execute unless score @s dummy matches 30.. run function wancomatter:boss/dusk/skill22/spread
execute if score #difficult counter matches 3..4 run tp @s ~ ~ ~ ~36 0
execute if score #difficult counter matches 3..4 run summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["this","b3s22flash","wnkm.owned","wnkm.round"]}
execute if score #difficult counter matches 3..4 run tp @e[tag=this] ^ ^ ^4 ~ 0
execute if score #difficult counter matches 3..4 run scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
execute if score #difficult counter matches 3..4 run tag @e[tag=this] remove this
