scoreboard players add @e[tag=b3s21arrow] counter 1
execute as @e[tag=b3s21arrow] if score @s counter = @s subcounter2 at @s run function wancomatter:boss/dusk/skill21/arrow-turn
execute if entity @e[tag=b3s21arrow,scores={counter=1000..},limit=1] run kill @e[tag=b3s21arrow,scores={counter=1000..}]
