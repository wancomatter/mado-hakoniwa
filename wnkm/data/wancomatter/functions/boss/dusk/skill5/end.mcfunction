scoreboard players reset @s Cooldown5_max
execute if score @s Cooldown4_max matches 2 if score #difficult counter matches 3 if entity @s[tag=b3s22used] if entity @a[gamemode=!spectator,distance=5..13,limit=1] positioned as @a[gamemode=!spectator,distance=5..13,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["target"]}
execute if score @s Cooldown4_max matches 2 if score #difficult counter matches 4 if entity @a[gamemode=!spectator,distance=5..13,limit=1] positioned as @a[gamemode=!spectator,distance=5..13,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["target"]}
execute if score @s Cooldown4_max matches 2 if score #difficult counter matches 3..4 if entity @e[tag=target,limit=1] run function wancomatter:boss/dusk/skill3/first
tag @s remove b3s5using