scoreboard players operation #dummy playerNumber = @s ownerNumber
tag @s add it
execute if entity @s[tag=summon_shulker] as @a[tag=p.summon_shulker] if score @s playerNumber = #dummy playerNumber run function wancomatter:skills/028/kill-ct
execute if entity @s[tag=summon_knight] as @a if score @s playerNumber = #dummy playerNumber run function wancomatter:skills/029/kill-ct
execute if entity @s[tag=summon_horse] as @a if score @s playerNumber = #dummy playerNumber run function wancomatter:skills/033/kill-ct
execute if entity @s[tag=summon_snowgolem] as @a[tag=p.snow_golem] if score @s playerNumber = #dummy playerNumber run function wancomatter:skills/079/kill-ct
execute if entity @s[tag=summon_wolf] as @a[tag=p.wolf] if score @s playerNumber = #dummy playerNumber run function wancomatter:skills/083/kill-ct
tag @s remove it
scoreboard players reset #dummy playerNumber