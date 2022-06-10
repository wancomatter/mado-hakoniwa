execute if score @e[tag=holy_bell_now,limit=1] counter matches 1 run particle minecraft:note ^1 ^ ^ 0 0 0 1 1 force @a
execute if score @e[tag=holy_bell_now,limit=1] counter matches 2 run particle minecraft:note ^2 ^ ^ 0 0 0 1 1 force @a
execute if score @e[tag=holy_bell_now,limit=1] counter matches 3 run particle minecraft:note ^3 ^ ^ 0 0 0 1 1 force @a
execute if score @e[tag=holy_bell_now,limit=1] counter matches 4 run particle minecraft:note ^4 ^ ^ 0 0 0 1 1 force @a
execute if score @e[tag=holy_bell_now,limit=1] counter matches 5 run particle minecraft:note ^5 ^ ^ 0 0 0 1 1 force @a
execute if score @e[tag=holy_bell_now,limit=1] counter matches 6 run particle minecraft:note ^6 ^ ^ 0 0 0 1 1 force @a
execute if score @e[tag=holy_bell_now,limit=1] counter matches 7 run particle minecraft:note ^7 ^ ^ 0 0 0 1 1 force @a
execute if score @e[tag=holy_bell_now,limit=1] counter matches 7 run particle minecraft:dust 255 255 255 2 ^7 ^ ^ 0 0 0 1 1 force @a

scoreboard players add @s dummy 1
execute if score @s dummy matches ..35 rotated ~10 ~ run function wancomatter:skills/015/wave