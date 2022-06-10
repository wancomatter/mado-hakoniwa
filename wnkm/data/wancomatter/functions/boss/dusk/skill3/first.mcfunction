scoreboard players set @s Cooldown3 198
tag @s add usedskill
data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0d
execute unless entity @e[tag=target,limit=1] positioned as @a[gamemode=!spectator,distance=3..16,limit=1,sort=nearest,tag=!hit] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["target"]}
execute at @e[tag=target] run summon minecraft:marker ~ ~ ~ {Tags:["this","b3ignisStrike"]}

execute facing entity @e[tag=this,limit=1,sort=nearest] feet as @e[tag=this] positioned as @s run tp @s ~ ~ ~ ~ 0
kill @e[tag=target]
execute rotated as @e[tag=this] run function wancomatter:boss/dusk/skill3/line
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=this] counter -14
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=this] counter -7
tag @e[tag=this] remove this
particle minecraft:witch ~ ~2 ~ 0.2 2 0.2 1 125 force @a
particle minecraft:witch ~ ~0.3 ~ 2 0.4 2 1 125 force @a
particle minecraft:witch ~ ~2 ~ 0.2 2 0.2 1 500 normal @a
particle minecraft:witch ~ ~0.1 ~ 2 0.1 2 1 500 normal @a
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 4 1.5
function wancomatter:boss/dusk/skill0/advent