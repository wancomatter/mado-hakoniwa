scoreboard players add @s counter 1
execute if score @s subcounter matches 1.. run scoreboard players remove @s subcounter 1

execute if score @s counter matches 1 run function wancomatter:boss/necro/skill4/0
execute if score @s counter matches 1 if score #difficult counter matches 3..4 run scoreboard players add @s counter 20
execute if score @s counter matches 70 run function wancomatter:boss/necro/skill12/charge
execute if score @s counter matches 220 if score #difficult counter matches 3..4 run scoreboard players add @s counter 30
execute if score @s counter matches 270 run function wancomatter:boss/necro/phase2/tp1
execute if score @s counter matches 270 if score #difficult counter matches 3..4 run scoreboard players add @s counter 9
execute if score @s counter matches 280 run function wancomatter:boss/necro/skill13/0
execute if score @s counter matches 310 run function wancomatter:boss/necro/phase2/tp2
execute if score @s counter matches 310 if score #difficult counter matches 3..4 run scoreboard players add @s counter 9
execute if score @s counter matches 330 run function wancomatter:boss/necro/skill1/0
execute if score @s counter matches 390..709 unless entity @s[scores={subcounter=1..}] run function wancomatter:boss/necro/phase2/tp3_check
execute if score @s counter matches 390..709 unless entity @s[scores={Cooldown1_max=1..}] run function wancomatter:boss/necro/skill0/0
execute if score @s counter matches 720 if score #difficult counter matches 3..4 run scoreboard players add @s counter 12
execute if score @s counter matches 745 run function wancomatter:boss/necro/phase2/tp1
execute if score @s counter matches 750 run function wancomatter:boss/necro/skill13/0
execute if score @s counter matches 780 run function wancomatter:boss/necro/phase2/tp2
execute if score @s counter matches 790..989 unless entity @s[scores={subcounter=1..}] run function wancomatter:boss/necro/phase2/tp3_check
execute if score @s counter matches 790..989 unless entity @s[scores={Cooldown1_max=1..}] run function wancomatter:boss/necro/skill0/0
execute if score @s counter matches 1020 run function wancomatter:boss/necro/skill11/0
execute if score @s counter matches 1060.. run scoreboard players set @s counter 60

