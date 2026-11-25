execute if entity @e[tag=!it,tag=summon_shulker,limit=1] as @e[tag=!it,tag=summon_shulker] if score @s ownerNumber = #dummy playerNumber run tag @e[tag=it] remove it
execute if entity @e[tag=it,limit=1] run tag @s remove p.summon_shulker
