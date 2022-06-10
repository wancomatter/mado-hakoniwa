scoreboard players add @s counter 1
execute if score @s counter matches 30 run function wancomatter:boss/bear/child/awake/30t
execute if score @s counter matches 31.. if entity @s[x=0,z=0,distance=1.0..] run tp @s ^ ^ ^0.5
execute if score @s counter matches 30.. run scoreboard players remove @s subcounter 1
execute if score @s counter matches 30.. if score @s subcounter matches ..0 run function wancomatter:boss/bear/child/awake/particle

execute if score @s subcounter2 matches 40.. run function wancomatter:boss/bear/child/awake/advent
execute if score @s subcounter2 matches 40.. run kill @s