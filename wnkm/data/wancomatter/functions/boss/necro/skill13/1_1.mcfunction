execute if score @s counter matches 1..3 run particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 1 8 normal @a
execute if score @s counter matches 1..3 run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s counter matches 2..5 positioned ^ ^-0.5 ^1.0 run function wancomatter:boss/necro/skill13/circle1
execute if score @s counter matches 5..9 positioned ^ ^-0.5 ^1.8 run function wancomatter:boss/necro/skill13/circle2
execute if score @s counter matches 9 run function wancomatter:boss/necro/skill13/launch
