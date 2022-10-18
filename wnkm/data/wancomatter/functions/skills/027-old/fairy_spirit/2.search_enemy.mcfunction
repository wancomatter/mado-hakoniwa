scoreboard players operation #skill_dmg teamNumber = @s teamNumber
execute as @e[tag=Battle,distance=..16.0] unless score @s teamNumber = #skill_dmg teamNumber run tag @s add 027target
execute if entity @e[tag=027target,limit=1] run tag @s add 027me
execute if entity @s[tag=027me] as @e[tag=027target] run function wancomatter:skills/027/fairy_spirit/air_check
execute if entity @s[tag=027me] run tag @s remove 027me

execute at @e[tag=027target,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["027spirit_target","027tmp"],Duration:22,Age:1,Radius:0f}
execute if entity @e[tag=027tmp,limit=1] run data modify entity @e[tag=027tmp,limit=1] Owner set from entity @e[tag=027target,limit=1,sort=nearest] UUID
tag @e[tag=027target] remove 027target
scoreboard players reset #skill_dmg

execute if entity @e[tag=027tmp,limit=1] run scoreboard players remove @s counter 20
execute if entity @e[tag=027tmp,limit=1] facing entity @e[tag=027tmp,limit=1,sort=nearest] feet run function wancomatter:skills/027/shot/0
execute if entity @e[tag=027tmp,limit=1] run scoreboard players set @s Cooldown4 0
execute if entity @e[tag=027tmp,limit=1] run scoreboard players set @s Cooldown1 22
execute if entity @e[tag=027tmp,limit=1] run data modify entity @s NoAI set value 1b
execute if entity @e[tag=027tmp,limit=1] run scoreboard players operation @e[tag=027tmp] subcounter = @s subcounter
execute if entity @e[tag=027tmp,limit=1] run schedule function wancomatter:skills/027/schedule/0 1t replace
execute if entity @e[tag=027tmp,limit=1] run tag @e[tag=027tmp] remove 027tmp
