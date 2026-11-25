scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
execute if score @s counter matches 25.. run function wancomatter:skills/068/end
tag @s add now
tp @s ^ ^ ^0.35
execute at @s run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^0.70
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^1.05
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^1.40
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^1.75
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^2.10
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^2.45
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^2.80
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^3.15
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^3.50
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^3.80
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit
tp @s ^ ^ ^4.20
execute at @s[tag=now] run function wancomatter:skills/068/judge-hit

tag @s remove now
scoreboard players reset #dummy
