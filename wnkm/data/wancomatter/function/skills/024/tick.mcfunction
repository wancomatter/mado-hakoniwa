scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber

tag @s add now
execute if score @s counter matches 20.. run function wancomatter:skills/024/end
tp @s ^ ^ ^0.25
execute at @s[tag=now] run function wancomatter:skills/024/1.judge-hit
tp @s ^ ^ ^0.50
execute at @s[tag=now] run function wancomatter:skills/024/1.judge-hit
tp @s ^ ^ ^0.75
execute at @s[tag=now] run function wancomatter:skills/024/1.judge-hit
tp @s ^ ^ ^1.0
execute at @s[tag=now] run function wancomatter:skills/024/1.judge-hit
tp @s ^ ^ ^1.25
execute at @s[tag=now] run function wancomatter:skills/024/1.judge-hit
tp @s ^ ^ ^1.50
execute at @s[tag=now] run function wancomatter:skills/024/1.judge-hit
#tp @s ^ ^ ^1.75
#execute at @s[tag=now] run function wancomatter:skills/024/1.judge-hit
#tp @s ^ ^ ^2.00
#execute at @s[tag=now] run function wancomatter:skills/024/1.judge-hit

tag @s remove now
scoreboard players reset #dummy
