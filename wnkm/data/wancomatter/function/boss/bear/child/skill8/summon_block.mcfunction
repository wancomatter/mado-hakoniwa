summon area_effect_cloud ~ 9.1 ~ {Duration:1,Tags:["this","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
loot spawn ~ -10 ~ loot wancomatter:random/1-20
execute store result score @e[tag=this,limit=1] dummy run data get entity @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.1-20"}]}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.1-20"}].amount 1.4
kill @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.1-20"}]}}}]
execute as @e[tag=this,limit=1] run scoreboard players add @s dummy 4
execute as @e[tag=this,limit=1] run scoreboard players operation @s dummy *= @s dummy
loot spawn ~ -10 ~ loot wancomatter:random/0-360
execute store result entity @e[tag=this,limit=1] Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount 1
kill @e[type=item,nbt={Item:{components:{"minecraft:attribute_modifiers":[{Name:"rand.0-360"}]}}}]
execute as @e[tag=this] at @s run function wancomatter:operation/0.01tp

execute as @e[tag=this,limit=1] at @s run function wancomatter:boss/bear/child/skill8/tp_y
execute at @e[tag=this,limit=1] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute at @e[tag=this,limit=1] run summon falling_block ~ ~ ~ {BlockState:{id:"minecraft:white_concrete_powder"},DropItem:0b,FallDistance:4.0f,FallHurtAmount:1.0f,FallHurtMax:4,Glowing:1b,HurtEntities:1b,Time:1,fall_distance:4.0d,Tags:["wnkm.owned","wnkm.round"]}
kill @e[tag=this]
