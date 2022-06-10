scoreboard players operation #dummy counter = @s s104count
execute if score #dummy counter matches 22.. run scoreboard players set #dummy counter 21
execute unless entity @e[tag=104highlight_AEC,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["104highlight_AEC"],Duration:1}
execute as @e[tag=104highlight_AEC] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=104highlight_AEC] at @s if block ~ ~0.1 ~ #wancomatter:air run tp @s ~ ~0.1 ~
execute as @e[tag=104highlight_AEC] at @s if block ~ ~0.2 ~ #wancomatter:air run tp @s ~ ~0.2 ~
execute as @e[tag=104highlight_AEC] at @s if block ~ ~0.4 ~ #wancomatter:air run tp @s ~ ~0.4 ~
execute at @e[tag=104highlight_AEC] run function wancomatter:skills/104/highlight_loop
scoreboard players reset #dummy
execute at @e[tag=104highlight_AEC] run particle witch ^-0.1 ^ ^ 0 0 0 0 2 normal @s
