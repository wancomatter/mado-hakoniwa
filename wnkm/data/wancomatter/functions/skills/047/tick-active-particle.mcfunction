playsound minecraft:block.glass.break master @a ~ ~ ~ 0.6 2

execute if entity @s[scores={dummy=-2}] run particle minecraft:item packed_ice ~ ~4 ~ 2.5 4.5 2.5 0.2 3 force @a
execute if entity @s[scores={dummy=2}] run particle minecraft:item packed_ice ~ ~4 ~ 2.5 4.5 2.5 0.2 3 force @a
execute unless entity @s[scores={dummy=2}] unless entity @s[scores={dummy=-2}] run particle minecraft:item packed_ice ~ ~4 ~ 3.5 3.5 3.5 0.2 3 force @a
particle minecraft:item packed_ice ~ ~4 ~ 3 4 3 0.2 12 normal @a
particle minecraft:cloud ~ ~2 ~ 3 4 3 0.1 1 normal @a
particle minecraft:dust 1 1 1 1 ~ ~2 ~ 3 4 3 0.1 4 normal @a
particle minecraft:dust 1 1 1 1 ~ ~2 ~ 3 4 3 0.1 1 force @a

execute if score @s counter matches 15.. if score @s Mana matches 2.. run function wancomatter:skills/047/tick-active
