tag @s remove shulker_count
scoreboard players add #dummy counter 1
execute if score #dummy counter matches 3.. run kill @s
execute if entity @e[tag=shulker_count,limit=1] as @e[tag=shulker_count,limit=1,sort=nearest] run function wancomatter:skills/028/shulker_count
