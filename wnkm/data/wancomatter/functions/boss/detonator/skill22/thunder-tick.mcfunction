scoreboard players add @s counter 1
execute if score @s counter matches 6 run scoreboard players set @s dummy 0
execute if score @s counter matches 6 run function wancomatter:boss/detonator/skill22/line2
execute if score @s counter matches 12 run scoreboard players set @s dummy 0
execute if score @s counter matches 12 run function wancomatter:boss/detonator/skill22/line3
execute if score @s counter matches 20.. run scoreboard players set @s dummy 0
execute if score @s counter matches 20.. run tag @s add this
execute if score @s counter matches 20.. run function wancomatter:boss/detonator/skill22/thunder-bomb
execute if score @s counter matches 20.. if entity @e[tag=b1s22shot-hit,limit=1] run function wancomatter:boss/detonator/skill22/hit-entity
execute if score @s counter matches 20.. run tag @s remove this
execute if score @s counter matches 20.. run kill @s

