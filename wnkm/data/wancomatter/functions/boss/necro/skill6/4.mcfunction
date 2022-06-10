summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Tags:["necro_s6_darknessoverload","first"],Silent:1,NoGravity:1b}
tp @e[tag=first,limit=1] ~ 15.0 ~ ~ 0
tag @e[tag=first] remove first

kill @s