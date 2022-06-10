execute if score @s counter matches 1 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s counter matches 1 run particle minecraft:flash ~ ~1 ~ 1 1 1 1 10
execute if score @s counter matches ..21 run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.5 60 normal @a
execute if score @s counter matches ..21 run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.5 10 force @a
execute if score @s counter matches 21..28 positioned ~ ~1 ~ run function wancomatter:skills/042/p21
execute if score @s counter matches 29..36 positioned ~ ~1 ~ run function wancomatter:skills/042/p29
execute if score @s counter matches 37..44 positioned ~ ~1 ~ run function wancomatter:skills/042/p37
execute if score @s counter matches 45..52 positioned ~ ~1 ~ run function wancomatter:skills/042/p45
execute if score @s counter matches 21..28 run particle minecraft:flash ~ ~ ~ 6.25 0 6.25 1 4 force @a
execute if score @s counter matches 29..36 run particle minecraft:flash ~ ~ ~ 12.5 0 12.5 1 8 force @a
execute if score @s counter matches 37..44 run particle minecraft:flash ~ ~ ~ 18.75 0 18.75 1 16 force @a
execute if score @s counter matches 45..52 run particle minecraft:flash ~ ~ ~ 25 0 25 1 32 force @a
