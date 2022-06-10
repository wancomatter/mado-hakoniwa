scoreboard players add @e[scores={instantKB_resist=1..}] instantKB_resist 1
execute if entity @e[scores={instantKB_resist=10..},limit=1] as @e[scores={instantKB_resist=10..}] run attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-31-31-31
execute if entity @e[scores={instantKB_resist=10..},limit=1] as @e[scores={instantKB_resist=10..}] run scoreboard players reset @s instantKB_resist
