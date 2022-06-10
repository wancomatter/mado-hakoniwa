execute unless score @s Cooldown9_max matches 40.. run scoreboard players add @s Cooldown9_max 1
execute if entity @s[tag=b1s23used] run scoreboard players add @s Cooldown9_max 1
execute if entity @s[tag=b1s23used] run tp @s 0 10 0
effect give @s minecraft:luck 1 9 true
execute if entity @s[scores={Cooldown9_max=19}] if score #difficult counter matches 4 run function wancomatter:boss/detonator/skill23/thunder_root
execute if entity @s[scores={Cooldown9_max=29}] if score #difficult counter matches 4 run function wancomatter:boss/detonator/skill23/thunder_root
execute if entity @s[scores={Cooldown9_max=39}] if score #difficult counter matches 3..4 run function wancomatter:boss/detonator/skill23/thunder_root
execute if entity @s[tag=!b1s23used,scores={Cooldown9_max=40}] if data entity @s {OnGround:1b} run function wancomatter:boss/detonator/skill23/blast
execute if entity @s[scores={Cooldown9_max=59}] if score #difficult counter matches 4 run function wancomatter:boss/detonator/skill23/thunder2_root
execute if entity @s[scores={Cooldown9_max=69}] if score #difficult counter matches 4 run function wancomatter:boss/detonator/skill23/thunder2_root
execute if score @s Cooldown9_max matches 70.. run tag @s remove b1s23used
execute if score @s Cooldown9_max matches 70.. run tag @s remove b1s23
execute if score @s Cooldown9_max matches 70.. run scoreboard players reset @s Cooldown9_max