scoreboard players add @s subcounter 1
execute as @a[tag=hide-player,distance=..3.3] if score @s playerNumber = #dummy playerNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=s12looker,distance=..1.3] run tag @s add hide-looked
execute as @a[tag=hide-player,distance=..3.3] if score @s playerNumber = #dummy playerNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=s12looker,distance=..1.3] run tag @s add hide-looked
tp @s ^ ^ ^0.8
particle minecraft:dust 0 0 0 0.3 ^ ^ ^0.2 0 0 0 0 1 normal @a[tag=hide-player]
particle minecraft:dust 0 0 0 0.3 ^ ^ ^0.4 0 0 0 0 1 normal @a[tag=hide-player]
particle minecraft:dust 0 0 0 0.3 ^ ^ ^0.6 0 0 0 0 1 normal @a[tag=hide-player]
particle minecraft:dust 0 0 0 0.3 ^ ^ ^0.8 0 0 0 0 1 force @a[tag=hide-player]
execute at @s if block ~ ~ ~ #wancomatter:air unless score @s subcounter matches 19.. run function wancomatter:skills/012/judge-look