tp @s 0 10 0
scoreboard players add @s Cooldown2_max 1
execute if score @s Cooldown2_max matches 75 run function wancomatter:boss/detonator/skill21/bomb_root
execute if score @s Cooldown2_max matches 95 run function wancomatter:boss/detonator/skill21/bomb_root
execute if score @s Cooldown2_max matches 115 run function wancomatter:boss/detonator/skill21/bomb_root
execute if score @s Cooldown2_max matches 135 if score #difficult counter matches 3..4 run function wancomatter:boss/detonator/skill21/bomb_root
execute if score @s Cooldown2_max matches 145 if score #difficult counter matches 2..4 run function wancomatter:boss/detonator/skill21/bomb_around1
execute if score @s Cooldown2_max matches 150 run function wancomatter:boss/detonator/skill21/bomb_around2
execute if score @s Cooldown2_max matches 155 run function wancomatter:boss/detonator/skill21/bomb_around3
execute if score @s Cooldown2_max matches 160 run function wancomatter:boss/detonator/skill21/bomb_around4
execute if score @s Cooldown2_max matches 165 if score #difficult counter matches 3..4 run function wancomatter:boss/detonator/skill21/bomb_around5
execute if score @s Cooldown2_max matches 145..165 if score #dummy dummy matches 24 run playsound minecraft:block.end_portal.spawn master @a 0 -100 0 0 2 1
execute if score @s Cooldown2_max matches 145..165 run scoreboard players reset #dummy dummy
execute if score @s Cooldown2_max matches 215..216 run function wancomatter:boss/detonator/skill21/bomb_root
execute if score @s Cooldown2_max matches 221 if score #difficult counter matches 3..4 run function wancomatter:boss/detonator/skill21/bomb_root
execute if score @s Cooldown2_max matches 227..228 run function wancomatter:boss/detonator/skill21/bomb_root
execute if score @s Cooldown2_max matches 233 if score #difficult counter matches 3..4 run function wancomatter:boss/detonator/skill21/bomb_root
execute if score @s Cooldown2_max matches 239..290 run function wancomatter:boss/detonator/skill21/bomb_root
execute if score @s Cooldown2_max matches 240 run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.3d
execute if score @s Cooldown2_max matches 240.. run tag @s remove b1s21
execute if score @s Cooldown2_max matches 240.. run scoreboard players reset @s Cooldown2_max