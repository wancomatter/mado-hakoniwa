tp @s 0 10 0
scoreboard players add @s Cooldown2_max 1

execute if score #difficult counter matches 3..4 if score @s Cooldown2_max matches 75 run function wancomatter:boss/dusk/skill21/wave
execute if score #difficult counter matches 3..4 if score @s Cooldown2_max matches 105 run function wancomatter:boss/dusk/skill21/wave
execute if score #difficult counter matches 3..4 if score @s Cooldown2_max matches 145 run function wancomatter:boss/dusk/skill21/wave
execute if score #difficult counter matches 3..4 if score @s Cooldown2_max matches 175 run function wancomatter:boss/dusk/skill21/wave
execute if score #difficult counter matches 3..4 if score @s Cooldown2_max matches 205 run function wancomatter:boss/dusk/skill21/wave
execute if score #difficult counter matches 3..4 if score @s Cooldown2_max matches 235 run function wancomatter:boss/dusk/skill21/wave

execute if score @s Cooldown2_max matches 75..205 run function wancomatter:boss/dusk/skill21/arrow-particle
execute if score @s Cooldown2_max matches 75..205 run function wancomatter:boss/dusk/skill21/arrow
execute if score #difficult counter matches 4 if score @s Cooldown2_max matches 75..205 run function wancomatter:boss/dusk/skill21/arrow
execute if score #difficult counter matches 3..4 if score @s Cooldown2_max matches 105..205 run function wancomatter:boss/dusk/skill21/arrow
execute if score @s Cooldown2_max matches 135..205 run function wancomatter:boss/dusk/skill21/arrow
execute if score #difficult counter matches 2..4 if score @s Cooldown2_max matches 165..205 run function wancomatter:boss/dusk/skill21/arrow
#execute if score @s Cooldown2_max matches 75..205 run function wancomatter:boss/dusk/skill21/arrow
execute if score @s Cooldown2_max matches 230 run function wancomatter:boss/dusk/skill21/shoot
execute if score @s Cooldown2_max matches 340.. run tag @s remove b3s21
execute if score @s Cooldown2_max matches 340.. run scoreboard players reset @s Cooldown2_max

execute at @e[tag=this] run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
execute at @e[tag=this] run particle minecraft:dust 1 0.1 0.1 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force @a
execute at @e[tag=this] run particle minecraft:dust 1 0.1 0.1 1 ~ ~ ~ 0.5 0.5 0.5 0 40 normal @a
execute at @e[tag=this] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 4 1
