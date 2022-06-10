scoreboard players add @s counter 1
execute if score @s counter matches ..9 rotated ~ 0 positioned ^ ^2 ^-1 rotated as @s run function wancomatter:boss/necro/skill13/1_1
execute if score @s counter matches 30.. run data merge entity @s {Glowing:0b}
execute if score @s counter matches 30.. run kill @s

