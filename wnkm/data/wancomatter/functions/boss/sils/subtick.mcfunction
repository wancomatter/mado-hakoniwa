#execute as @e[tag=sils] at @s run scoreboard players operation @s HP = @e[tag=sils_hitbox,limit=1,sort=nearest] HP
execute if entity @e[tag=sils_slash1,limit=1] as @e[tag=sils_slash1] at @s run function wancomatter:boss/sils/sword/tick1
execute if entity @e[tag=sils_slash2,limit=1] as @e[tag=sils_slash2] at @s run function wancomatter:boss/sils/sword/tick2
execute if entity @e[tag=sils_slash3,limit=1] as @e[tag=sils_slash3] at @s run function wancomatter:boss/sils/sword/tick3
execute if entity @e[tag=sils_axe1,limit=1] as @e[tag=sils_axe1] at @s run function wancomatter:boss/sils/axe/tick1
execute if entity @e[tag=sils_axe2,limit=1] as @e[tag=sils_axe2] at @s run function wancomatter:boss/sils/axe/tick2
execute if entity @e[tag=sils_axe3,limit=1] as @e[tag=sils_axe3] at @s run function wancomatter:boss/sils/axe/tick3
execute if entity @e[tag=sils_netherite,limit=1] as @e[tag=sils_netherite] at @s run function wancomatter:boss/sils/dainikeitai/tick
execute if entity @e[tag=sils_gate,limit=1] as @e[tag=sils_gate] at @s run function wancomatter:boss/sils/trident/tick1
execute if entity @e[tag=sils_babylone,limit=1] run scoreboard players add @e[tag=sils_babylone] counter 1
execute if entity @e[tag=sils_babylone,limit=1] as @e[tag=sils_babylone] at @s run function wancomatter:boss/sils/trident/tick2
execute if entity @e[tag=sils_head,limit=1] as @e[tag=sils_head] at @s run function wancomatter:boss/sils/head/tick1

execute if entity @e[tag=sils_slime,limit=1] as @e[tag=sils_slime] run function wancomatter:boss/sils/tick_slime