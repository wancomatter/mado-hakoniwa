summon area_effect_cloud ~ 9.1 ~ {Duration:1,Tags:["this"]}
loot spawn ~ -10 ~ loot wancomatter:random/1-20
execute store result score @e[tag=this,limit=1] dummy run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.1-20"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.1-20"}].Amount 1.4
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.1-20"}]}}}]
execute as @e[tag=this,limit=1] run scoreboard players add @s dummy 4
execute as @e[tag=this,limit=1] run scoreboard players operation @s dummy *= @s dummy
loot spawn ~ -10 ~ loot wancomatter:random/0-360
execute store result entity @e[tag=this,limit=1] Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount 1
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.0-360"}]}}}]
execute as @e[tag=this] at @s run function wancomatter:operation/0.01tp

execute as @e[tag=this,limit=1] at @s run function wancomatter:boss/bear/child/skill8/tp_y
execute at @e[tag=this,limit=1] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute at @e[tag=this,limit=1] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:white_concrete_powder"},Glowing:1b,Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:4,FallDistance:4f,FallHurtAmount:1f}
kill @e[tag=this]
