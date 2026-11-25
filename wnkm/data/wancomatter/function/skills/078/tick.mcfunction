scoreboard players add @s counter 1
execute if entity @s[tag=meteroStand_noGround] run function wancomatter:skills/078/tick_throwed
execute if score @s counter matches ..42 run function wancomatter:skills/078/particle1
execute if score @s counter matches 42..45 run function wancomatter:skills/078/show_area
execute if score @s counter matches 46.. run scoreboard players add @s subcounter 2
execute if score @s subcounter matches 3.. run function wancomatter:skills/078/meteor_summon

execute if score @s counter matches 162.. run kill @s
