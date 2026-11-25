scoreboard players set @s counter 0

execute if entity @e[tag=heal_target,limit=1] run function wancomatter:boss/necro/skill1/priest/select_target
execute if score #difficult counter matches 3..4 if entity @e[tag=heal_target,limit=1] run function wancomatter:boss/necro/skill1/priest/select_target
execute if score #difficult counter matches 4 if entity @e[tag=heal_target,limit=1] run function wancomatter:boss/necro/skill1/priest/select_target
