#移動系
execute unless score #difficult counter matches 3..4 run scoreboard players set @s Cooldown1 80
execute if score #difficult counter matches 3 run scoreboard players set @s Cooldown1 75
execute if score #difficult counter matches 4 run scoreboard players set @s Cooldown1 60
tag @s add usedskill
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2.5 0.5
particle cloud ~ ~ ~ 0 0 0 0.6 400 normal @a
particle cloud ~ ~ ~ 0 0 0 0.6 100 force @a

summon shulker_bullet ~ ~2 ~ {Motion:[0.5d,1d,0d],Tags:["bear_shulker_bullet"]}
summon shulker_bullet ~ ~2 ~ {Motion:[-0.5d,1d,0d],Tags:["bear_shulker_bullet"]}
summon shulker_bullet ~ ~2 ~ {Motion:[0d,1d,0.5d],Tags:["bear_shulker_bullet"]}
summon shulker_bullet ~ ~2 ~ {Motion:[0d,1d,-0.5d],Tags:["bear_shulker_bullet"]}
execute if score #difficult counter matches 2..4 run summon shulker_bullet ~ ~2 ~ {Motion:[0.5d,0.6d,0.5d],Tags:["bear_shulker_bullet","this2"]}
execute if score #difficult counter matches 2..4 run summon shulker_bullet ~ ~2 ~ {Motion:[-0.5d,0.6d,0.5d],Tags:["bear_shulker_bullet","this2"]}
execute if score #difficult counter matches 2..4 run summon shulker_bullet ~ ~2 ~ {Motion:[-0.5d,0.6d,-0.5d],Tags:["bear_shulker_bullet","this2"]}
execute if score #difficult counter matches 2..4 run summon shulker_bullet ~ ~2 ~ {Motion:[0.5d,0.6d,-0.5d],Tags:["bear_shulker_bullet","this2"]}
scoreboard players set @e[tag=this2] counter 5
tag @e[tag=this2] remove this2
execute if score #difficult counter matches 4 run summon shulker_bullet ~ ~2 ~ {Motion:[0.2,1.4d,0.2d],Tags:["bear_shulker_bullet","this3"]}
execute if score #difficult counter matches 4 run summon shulker_bullet ~ ~2 ~ {Motion:[-0.2,1.4d,0.2d],Tags:["bear_shulker_bullet","this3"]}
execute if score #difficult counter matches 4 run summon shulker_bullet ~ ~2 ~ {Motion:[-0.2,1.4d,-0.2d],Tags:["bear_shulker_bullet","this3"]}
execute if score #difficult counter matches 4 run summon shulker_bullet ~ ~2 ~ {Motion:[0.2,1.4d,-0.2d],Tags:["bear_shulker_bullet","this3"]}
scoreboard players set @e[tag=this3] counter -5
tag @e[tag=this3] remove this3
execute if score #difficult counter matches 3..4 run summon shulker_bullet ~ ~2 ~ {Motion:[1.5d,0.2d,0.0d],Tags:["bear_shulker_bullet","this4"]}
execute if score #difficult counter matches 3..4 run summon shulker_bullet ~ ~2 ~ {Motion:[-1.5d,0.2d,0.0d],Tags:["bear_shulker_bullet","this4"]}
execute if score #difficult counter matches 3..4 run summon shulker_bullet ~ ~2 ~ {Motion:[0.0d,0.2d,-1.5d],Tags:["bear_shulker_bullet","this4"]}
execute if score #difficult counter matches 3..4 run summon shulker_bullet ~ ~2 ~ {Motion:[0.0d,0.2d,1.5d],Tags:["bear_shulker_bullet","this4"]}
scoreboard players set @e[tag=this4] counter 10
tag @e[tag=this4] remove this4


summon area_effect_cloud ~ 8.2 ~ {Tags:["this9","target_distance"],Duration:1}
loot spawn ~ -10 ~ loot wancomatter:random/250
execute store result entity @e[tag=this9,limit=1] Pos[0] double 1 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.250"}].Amount 0.025
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}}]
loot spawn ~ -10 ~ loot wancomatter:random/250
execute store result entity @e[tag=this9,limit=1] Pos[2] double 1 run data get entity @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}},limit=1] Item.tag.AttributeModifiers[{Name:"rand.250"}].Amount 0.025
kill @e[type=item,nbt={Item:{tag:{AttributeModifiers:[{Name:"rand.250"}]}}}]
function wancomatter:operation/distance
execute facing entity @e[tag=this9,limit=1] feet run tp @s ~ ~ ~ ~ ~
scoreboard players operation @s Cooldown1_max = @s dummy
scoreboard players operation @s dummy /= #2 counter
scoreboard players operation @s Cooldown1 += @s dummy
scoreboard players reset @s dummy
kill @e[tag=this9]

tag @e[tag=first] remove first
