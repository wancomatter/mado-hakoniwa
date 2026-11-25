scoreboard players add #dummy subcounter2 1
tag @e[tag=first,sort=random,limit=1] add random
scoreboard players operation @e[tag=random] subcounter2 = #dummy subcounter2
tag @e[tag=random] remove first
tag @e[tag=random] remove random
execute if entity @e[tag=first,limit=1] run function wancomatter:boss/necro/skill2/0-loop
