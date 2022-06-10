scoreboard players remove @s Mana 35
scoreboard players set @s CooldownX 600
scoreboard players set @s CooldownX_max 600

summon marker ~ ~ ~ {Tags:["avaritis_core","first"]}

execute rotated ~000 0 run summon area_effect_cloud ^0.1 ^ ^0.0 {Tags:["avaritisAEC","avaritisAEC1","this"],Duration:30}
execute rotated ~045 0 run summon area_effect_cloud ^0.1 ^ ^0.0 {Tags:["avaritisAEC","avaritisAEC2","this"],Duration:30}
execute rotated ~090 0 run summon area_effect_cloud ^0.1 ^ ^0.0 {Tags:["avaritisAEC","avaritisAEC3","this"],Duration:30}
execute rotated ~135 0 run summon area_effect_cloud ^0.1 ^ ^0.0 {Tags:["avaritisAEC","avaritisAEC4","this"],Duration:30}
execute rotated ~180 0 run summon area_effect_cloud ^0.1 ^ ^0.0 {Tags:["avaritisAEC","avaritisAEC5","this"],Duration:30}
execute rotated ~225 0 run summon area_effect_cloud ^0.1 ^ ^0.0 {Tags:["avaritisAEC","avaritisAEC6","this"],Duration:30}
execute rotated ~280 0 run summon area_effect_cloud ^0.1 ^ ^0.0 {Tags:["avaritisAEC","avaritisAEC7","this"],Duration:30}
execute rotated ~315 0 run summon area_effect_cloud ^0.1 ^ ^0.0 {Tags:["avaritisAEC","avaritisAEC8","this"],Duration:30}

execute as @e[tag=this] at @s facing entity @e[tag=first,limit=1] feet positioned as @e[tag=first,limit=1] rotated ~180 0 run tp @s ^ ^ ^2 ~ ~
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
tag @e[tag=first] remove first
tag @e[tag=this] remove this
