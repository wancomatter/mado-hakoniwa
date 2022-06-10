scoreboard players add @s subcounter 1
function wancomatter:skills/025/judge-hit
execute if score @s subcounter matches 11.. run tp @s ~ ~ ~
execute unless score @s subcounter matches 11.. positioned ^ ^ ^0.3 run function wancomatter:skills/025/tick2
