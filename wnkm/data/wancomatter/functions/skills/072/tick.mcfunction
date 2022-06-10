scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
execute if score @s counter matches 25.. run function wancomatter:skills/072/end
tag @s add now
tp @s ^ ^ ^0.45 ~ ~0.014
execute at @s run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^0.90 ~ ~0.028
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^1.35 ~ ~0.042
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^1.80 ~ ~0.056
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^2.25 ~ ~0.070
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^2.70 ~ ~0.084
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^3.15 ~ ~0.098
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^3.60 ~ ~0.112
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^4.05 ~ ~0.126
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^4.50 ~ ~0.140
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^4.95 ~ ~0.154
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^5.40 ~ ~0.168
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^5.85 ~ ~0.182
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit
tp @s ^ ^ ^6.30 ~ ~0.196
execute at @s[tag=now] run function wancomatter:skills/072/judge-hit

tag @s remove now
scoreboard players reset #dummy
