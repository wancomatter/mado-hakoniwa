particle witch ~ ~ ~ 0.2 0.2 0.2 1 4 normal @a
particle witch ~ ~ ~ 0 0 0 1 1 force @a
tp @s ^ ^ ^0.33
execute if entity @e[tag=necro,distance=..0.7,limit=1] run function wancomatter:boss/necro/skill6/charge/spirit_end

