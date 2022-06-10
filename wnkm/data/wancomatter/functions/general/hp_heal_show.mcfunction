#スコア処理
scoreboard players operation #- counter -= #- subcounter2
scoreboard players operation #- subcounter = #- counter
scoreboard players operation #- counter /= #10 counter
scoreboard players operation #- subcounter %= #10 counter

#エンティティ処理
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["this2"],Duration:2}
loot spawn 0 0 0 loot wancomatter:random/0-360
execute store result entity @e[tag=this2,limit=1] Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
execute rotated as @e[tag=this2,limit=1] positioned ~ ~1 ~ run summon minecraft:armor_stand ^0.8 ^-0.1 ^ {Tags:["this","damage_indicator"],Marker:1b,Invisible:1b,Small:1b,Invulnerable:1b,CustomName:'""',CustomNameVisible:1b}
kill @e[tag=this2]
setblock 0 0 0 oak_sign destroy
data modify block 0 0 0 Text1 set value '{"translate":"+%s.%s","with":[{"score":{"name":"#-","objective":"counter"}},{"score":{"name":"#-","objective":"subcounter"}}],"color":"green"}'
execute as @e[tag=this] run data modify entity @s CustomName set from block 0 0 0 Text1
setblock 0 0 0 air
tag @e[tag=this] remove this

