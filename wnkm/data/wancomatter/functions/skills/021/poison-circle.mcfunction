scoreboard players add @s dummy 1
particle dust 0.1 0.1 0.1 1 ^4 ^ ^ 0 0 0 1 1 force @a
execute unless entity @s[scores={dummy=1..23}] run tp @s ~ ~-0.5 ~ ~ ~
execute if entity @s[scores={dummy=1..23}] rotated ~15.1 ~ run function wancomatter:skills/021/poison-circle