execute unless score #difficult counter matches 2..4 facing entity @e[tag=bear_s7AEC,limit=1,sort=nearest] feet run tp @s ^ ^ ^1.1
execute if score #difficult counter matches 2 facing entity @e[tag=bear_s7AEC,limit=1,sort=nearest] feet run tp @s ^ ^ ^1.3
execute if score #difficult counter matches 3 facing entity @e[tag=bear_s7AEC,limit=1,sort=nearest] feet run tp @s ^ ^ ^1.5
execute if score #difficult counter matches 4 facing entity @e[tag=bear_s7AEC,limit=1,sort=nearest] feet run tp @s ^ ^ ^2.0
scoreboard players add @s Cooldown2 1
execute if score @s Cooldown2 matches 3..50 at @s if entity @e[tag=bear_s7AEC,limit=1,distance=..2.0] run function wancomatter:boss/bear/child/skill7/explode
execute if score @s Cooldown2 matches 51.. run kill @e[tag=bear_s7AEC]
execute if score @s Cooldown2 matches 51.. run tag @a[tag=bear_s7arget] remove bear_s7target
execute if score @s Cooldown2 matches 51.. run tag @s remove bear_s7
