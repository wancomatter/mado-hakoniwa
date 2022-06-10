scoreboard players operation #dummy playerNumber = @s playerNumber
execute if entity @e[tag=summon_horse,limit=1] as @e[tag=summon_horse] if score @s ownerNumber = #dummy playerNumber run tag @s add your_horse
execute as @a if score @s playerNumber = #dummy playerNumber unless entity @e[tag=your_horse,limit=1] run function wancomatter:skills/033/kill-ct
execute unless entity @e[tag=your_horse,limit=1] run kill @s
execute if entity @e[tag=your_horse,limit=1] run tag @e[tag=your_horse] remove your_horse
