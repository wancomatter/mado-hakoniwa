scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber

tag @s add now
execute if score @s counter matches 8.. run function wancomatter:skills/080/end
tp @s ^ ^ ^0.40
execute at @s[tag=now] run function wancomatter:skills/080/judge-hit
tp @s ^ ^ ^0.80
execute at @s[tag=now] run function wancomatter:skills/080/judge-hit
tp @s ^ ^ ^1.20
execute at @s[tag=now] run function wancomatter:skills/080/judge-hit
tp @s ^ ^ ^1.60
execute at @s[tag=now] run function wancomatter:skills/080/judge-hit
tp @s ^ ^ ^2.00
execute at @s[tag=now] run function wancomatter:skills/080/judge-hit
tp @s ^ ^ ^2.40
execute at @s[tag=now] run function wancomatter:skills/080/judge-hit
tp @s ^ ^ ^2.80
execute at @s[tag=now] run function wancomatter:skills/080/judge-hit
tp @s ^ ^ ^3.20
execute at @s[tag=now] run function wancomatter:skills/080/judge-hit

tag @s remove now
scoreboard players reset #dummy
