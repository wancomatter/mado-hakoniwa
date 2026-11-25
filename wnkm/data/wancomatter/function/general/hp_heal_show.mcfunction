#スコア処理
scoreboard players operation #- counter -= #- subcounter2
scoreboard players operation #- subcounter = #- counter
scoreboard players operation #- counter /= #10 counter
scoreboard players operation #- subcounter %= #10 counter

#エンティティ処理
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["this2","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
loot spawn 0 0 0 loot wancomatter:random/0-360
execute store result entity @e[tag=this2,limit=1] Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}},limit=1] Item.components."minecraft:attribute_modifiers"[{id:"wnkm:legacy/rand.0-360"}].amount
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{randomItem:1b}}}}]
execute rotated as @e[tag=this2,limit=1] positioned ~ ~1 ~ run summon minecraft:armor_stand ^0.8 ^-0.1 ^ {CustomNameVisible:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Small:1b,Tags:["this","damage_indicator","wnkm.owned","wnkm.round"],CustomName:""}
kill @e[tag=this2]
setblock 0 0 0 oak_sign destroy
data modify block 1024 0 1024 Text1 set value '{"translate":"+%s.%s","with":[{"score":{"name":"#-","objective":"counter"}},{"score":{"name":"#-","objective":"subcounter"}}],"color":"green"}'
execute as @e[tag=this] run data modify entity @s CustomName set from block 1024 0 1024 Text1
setblock 1024 0 1024 air
tag @e[tag=this] remove this
