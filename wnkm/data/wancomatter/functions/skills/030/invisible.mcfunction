scoreboard players remove @s Mana 6
execute as @e[tag=summon_bomb,tag=!bomb-invisible,distance=..3] if score @s ownerNumber = #dummy playerNumber run tag @s add bomb-command
execute if entity @e[tag=bomb-command,limit=1] as @e[tag=bomb-command] run effect give @s minecraft:invisibility 1000000 0 false
execute if entity @e[tag=bomb-command,limit=1] as @e[tag=bomb-command] run data modify entity @s Attributes prepend value {Name:"generic.knockback_resistance",Base:1d}
execute at @e[tag=bomb-command] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 1.2 2
execute at @e[tag=bomb-command] run particle minecraft:dust 0.1 0.1 0.1 0.7 ~ ~1 ~ 3.5 3.5 3.5 1 200 normal @a
execute at @e[tag=bomb-command] run particle minecraft:dust 0.1 0.1 0.1 0.7 ~ ~1 ~ 3.5 3.5 3.5 1 50 force @a
execute as @e[tag=bomb-command] run scoreboard players set @s HP 100000
execute as @e[tag=bomb-command] run scoreboard players set @s maxHP 100000
execute as @e[tag=bomb-command] run data merge entity @s {Fuse:32767s}

scoreboard players reset @e[tag=bomb-command] subcounter
tag @e[tag=bomb-command] add bomb-invisible
tag @e[tag=bomb-command] remove bomb-command