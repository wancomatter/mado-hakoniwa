scoreboard players operation #- subcounter = @s damageTaken
scoreboard players operation #- subcounter /= #10 counter
scoreboard players operation #- dummy = @s damageTaken
scoreboard players operation #- dummy %= #10 counter
scoreboard players operation #- subcounter *= #-1 counter
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["this2"],Duration:2}
loot spawn 0 0 0 loot wancomatter:random/0-360
execute store result entity @e[tag=this2,limit=1] Rotation[0] float 1 run data get entity @e[type=item,nbt={Item:{tag:{randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.0-360"}].Amount
kill @e[type=item,nbt={Item:{tag:{randomItem:1b}}}]
execute if entity @e[tag=hurtBy,limit=1] rotated as @e[tag=hurtBy,limit=1] positioned ^ ^1 ^-0.3 rotated as @e[tag=this2,limit=1] run summon minecraft:armor_stand ^0.7 ^-0.1 ^ {Tags:["this","damage_indicator"],Marker:1b,Invisible:1b,Small:1b,Invulnerable:1b,CustomName:'""',CustomNameVisible:1b}
execute unless entity @e[tag=hurtBy,limit=1] rotated as @e[tag=this2,limit=1] positioned ~ ~1 ~ run summon minecraft:armor_stand ^0.8 ^-0.1 ^ {Tags:["this","damage_indicator"],Marker:1b,Invisible:1b,Small:1b,Invulnerable:1b,CustomName:'""',CustomNameVisible:1b}
kill @e[tag=this2]
setblock 0 0 0 oak_sign destroy
execute if entity @s[tag=!magicDamage,tag=!trueDamage] run data modify block 0 0 0 Text1 set value '[{"score":{"name":"#-","objective":"subcounter"},"color":"gold"},{"text":"."},{"score":{"name":"#-","objective":"dummy"}}]'
execute if entity @s[tag=magicDamage,tag=!trueDamage] run data modify block 0 0 0 Text1 set value '[{"score":{"name":"#-","objective":"subcounter"},"color":"light_purple"},{"text":"."},{"score":{"name":"#-","objective":"dummy"}}]'
execute if entity @s[tag=trueDamage] run data modify block 0 0 0 Text1 set value '[{"score":{"name":"#-","objective":"subcounter"},"color":"aqua"},{"text":"."},{"score":{"name":"#-","objective":"dummy"}}]'
execute as @e[tag=this] run data modify entity @s CustomName set from block 0 0 0 Text1
setblock 0 0 0 air
tag @e[tag=this] remove this
scoreboard players reset #-
