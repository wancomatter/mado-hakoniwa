scoreboard players add @s dummy 1
particle minecraft:firework ~ ~ ~ 0 0 0 0 1 force @a
execute unless score @s dummy matches 22.. positioned ^ ^ ^0.5 unless entity @s[distance=..0.5] run function wancomatter:skills/038/particle

