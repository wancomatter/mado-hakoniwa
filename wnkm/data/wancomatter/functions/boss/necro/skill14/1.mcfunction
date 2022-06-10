scoreboard players add @s counter 1
execute if score @s counter matches 34.. run function wancomatter:boss/necro/skill14/2

tag @s add now
execute as @e[tag=necro_s14_barrier] at @s positioned as @e[tag=now,limit=1,sort=nearest] positioned ^ ^ ^0.7 rotated as @s run tp @s ~ ~ ~ ~8 ~
tag @s remove now

execute if data entity @s {HurtTime:9s} run function wancomatter:boss/necro/skill14/hurt