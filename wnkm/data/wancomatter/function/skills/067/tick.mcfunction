scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
execute if score @s counter matches 20.. run function wancomatter:skills/067/end
tag @s add now
tp @s ^ ^ ^0.55
execute at @s[tag=now] run function wancomatter:skills/067/judge-hit
tp @s ^ ^ ^1.10
execute at @s[tag=now] run function wancomatter:skills/067/judge-hit
tp @s ^ ^ ^1.65
execute at @s[tag=now] run function wancomatter:skills/067/judge-hit
tp @s ^ ^ ^2.20
execute at @s[tag=now] run function wancomatter:skills/067/judge-hit
tp @s ^ ^ ^2.75
execute at @s[tag=now] run function wancomatter:skills/067/judge-hit
tp @s ^ ^ ^3.30
execute at @s[tag=now] run function wancomatter:skills/067/judge-hit
tp @s ^ ^ ^3.85
execute at @s[tag=now] run function wancomatter:skills/067/judge-hit

tag @s remove now
scoreboard players reset #dummy
