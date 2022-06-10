scoreboard players set @s Cooldown8 200
scoreboard players set @s Cooldown1 100
execute unless score @s Cooldown7 matches 120.. run scoreboard players set @s Cooldown7 120
kill @e[tag=bear_s8AEC]
function wancomatter:boss/bear/child/skill8/clear_block
schedule function wancomatter:boss/bear/child/skill8/clear_block 200t
execute at @a[scores={maxHP=1..},distance=..5,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["bear_s8AEC"]}
execute at @e[tag=bear_s8AEC] run particle witch ~ 6.3 ~ 2 0 2 1 400 normal @a
execute at @e[tag=bear_s8AEC] run particle witch ~ 6.3 ~ 2 0 2 1 100 force @a
execute at @e[tag=bear_s8AEC] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 0.5
tag @s add usedskill

summon armor_stand ~ 28.2 ~ {Tags:["this","target_distance"],Marker:1b,Invisible:1b,NoGravity:1b}
function wancomatter:operation/distance
scoreboard players operation @s Cooldown1_max = @s dummy
scoreboard players operation @s dummy /= #2 counter
scoreboard players operation @s Cooldown1 += @s dummy
scoreboard players reset @s dummy
execute facing entity @e[tag=this,limit=1] feet run tp @s ~ ~ ~ ~ ~
