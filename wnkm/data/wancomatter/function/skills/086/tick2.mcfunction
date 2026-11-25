scoreboard players add @s subcounter 1
function wancomatter:skills/086/judge-hit
execute if score @s subcounter matches 12.. run tp @s ~ ~ ~
execute unless score @s subcounter matches 12.. positioned ^ ^ ^0.375 run function wancomatter:skills/086/tick2
