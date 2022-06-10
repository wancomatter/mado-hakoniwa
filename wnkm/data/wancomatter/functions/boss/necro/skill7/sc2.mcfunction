execute at @e[tag=necro] run function wancomatter:boss/necro/skill7/sc2_main
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=necro_s7_circle,limit=1] counter 40
execute if score #difficult counter matches 2..4 if entity @e[tag=necro,limit=1] run schedule function wancomatter:boss/necro/skill7/sc3 34t

