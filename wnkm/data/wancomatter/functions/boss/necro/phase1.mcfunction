scoreboard players add @s counter 1

execute if score @s counter matches 1 run function wancomatter:boss/necro/skill4/0
execute if score @s counter matches 64..12000 run scoreboard players add @s counter 29
execute if score @s counter matches 64..12000 at @e[tag=necro_s4skeleton] run scoreboard players add @s counter 1
execute if score @s counter matches 12000..12709 if score #difficult counter matches 4 run scoreboard players set @s counter 15000
execute if score @s counter matches 12000..12709 run scoreboard players set @s counter 12980
execute if score @s counter matches 64..12000 unless entity @s[scores={Cooldown1_max=1..}] run function wancomatter:boss/necro/skill0/0
execute if score @s counter matches 13020 run function wancomatter:boss/necro/skill9/0
execute if score @s counter matches 13060 run function wancomatter:boss/necro/skill9/0
execute if score @s counter matches 13100 run function wancomatter:boss/necro/skill9/0
execute if score @s counter matches 13140..13280 unless entity @s[scores={Cooldown1_max=1..}] run function wancomatter:boss/necro/skill0/0
execute if score @s counter matches 13300 run function wancomatter:boss/necro/skill3/0
execute if score @s counter matches 13340..13480 unless entity @s[scores={Cooldown1_max=1..}] run function wancomatter:boss/necro/skill0/0
execute if score @s counter matches 13500 run function wancomatter:boss/necro/random_skill_1
execute if score @s counter matches 13500 run function wancomatter:boss/necro/skill9/0
execute if score @s counter matches 13540 if entity @s[scores={Cooldown1_max=1..}] run function wancomatter:boss/necro/skill9/0
execute if score @s counter matches 13580 if entity @s[scores={Cooldown1_max=1..}] run function wancomatter:boss/necro/skill9/0
execute if score @s counter matches 13620 if entity @s[scores={Cooldown1_max=1..}] run function wancomatter:boss/necro/skill9/0
execute if score @s counter matches 13560..13760 unless entity @s[scores={Cooldown1_max=1..}] run function wancomatter:boss/necro/skill0/0
execute if score @s counter matches 13770 run function wancomatter:boss/necro/skill2/0
execute if score @s counter matches 14329 run scoreboard players set @s counter 0

execute if score @s counter matches 15010 run function wancomatter:boss/necro/skill7/0
execute if score @s counter matches 15400 run function wancomatter:boss/necro/skill7/0
execute if score @s counter matches 15030..15800 unless entity @e[tag=necro_s7_circle,limit=1] unless entity @s[scores={Cooldown1_max=1..}] run function wancomatter:boss/necro/skill0/0
execute if score @s counter matches 15770 run function wancomatter:boss/necro/skill2/0
execute if score @s counter matches 15790 run function wancomatter:boss/necro/skill7/0
execute if score @s counter matches 16329.. run scoreboard players set @s counter 0