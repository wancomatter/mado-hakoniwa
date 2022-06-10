execute unless entity @s[tag=b3s20first] if data entity @s {OnGround:1b} unless score @s Cooldown4 matches 1.. run function wancomatter:boss/dusk/skill4/first
execute unless entity @s[tag=b3s20first] if data entity @s {OnGround:1b} run tag @s remove b3s20
execute if entity @s[tag=b3s20first] run tag @s remove b3s20first