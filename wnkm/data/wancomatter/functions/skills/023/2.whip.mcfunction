scoreboard players set @s subcounter 25

scoreboard players operation #- Cooldown1 = @s Cooldown1
execute if score #- Cooldown1 matches 064.. run tag @s add 211tmp.064
execute if score #- Cooldown1 matches 064.. run scoreboard players remove #- Cooldown1 064
execute if score #- Cooldown1 matches 032.. run tag @s add 211tmp.032
execute if score #- Cooldown1 matches 032.. run scoreboard players remove #- Cooldown1 032
execute if score #- Cooldown1 matches 016.. run tag @s add 211tmp.016
execute if score #- Cooldown1 matches 016.. run scoreboard players remove #- Cooldown1 016
execute if score #- Cooldown1 matches 008.. run tag @s add 211tmp.008
execute if score #- Cooldown1 matches 008.. run scoreboard players remove #- Cooldown1 008
execute if score #- Cooldown1 matches 004.. run tag @s add 211tmp.004
execute if score #- Cooldown1 matches 004.. run scoreboard players remove #- Cooldown1 004
execute if score #- Cooldown1 matches 002.. run tag @s add 211tmp.002
execute if score #- Cooldown1 matches 002.. run scoreboard players remove #- Cooldown1 002
execute if score #- Cooldown1 matches 001.. run tag @s add 211tmp.001
execute if score #- Cooldown1 matches 001.. run scoreboard players remove #- Cooldown1 001
scoreboard players reset #-

execute rotated ~-37.5 ~ run function wancomatter:skills/023/3.repeat

execute if entity @s[tag=211tmp.064] run tag @s remove 211tmp.064
execute if entity @s[tag=211tmp.032] run tag @s remove 211tmp.032
execute if entity @s[tag=211tmp.016] run tag @s remove 211tmp.016
execute if entity @s[tag=211tmp.008] run tag @s remove 211tmp.008
execute if entity @s[tag=211tmp.004] run tag @s remove 211tmp.004
execute if entity @s[tag=211tmp.002] run tag @s remove 211tmp.002
execute if entity @s[tag=211tmp.001] run tag @s remove 211tmp.001


scoreboard players add @s Cooldown1 2