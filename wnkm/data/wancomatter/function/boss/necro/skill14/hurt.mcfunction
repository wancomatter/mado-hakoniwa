scoreboard players remove @e[tag=necro_s14_barrier] subcounter 1
execute as @e[tag=necro_s14_barrier,scores={subcounter=..0}] at @s run function wancomatter:boss/necro/skill14/break_shield

scoreboard players remove @s subcounter 1
execute if entity @s[scores={subcounter=..0}] run function wancomatter:boss/necro/skill14/end
