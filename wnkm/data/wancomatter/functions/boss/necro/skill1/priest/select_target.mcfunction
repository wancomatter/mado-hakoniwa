execute as @e[tag=heal_target] run scoreboard players operation #dummy HP > @s HP
execute as @e[tag=heal_target] if score @s HP >= #dummy HP run tag @s add heal_selected
execute anchored eyes positioned ^ ^ ^ anchored feet as @e[tag=heal_selected] run function wancomatter:boss/necro/skill1/priest/heal
execute as @e[tag=heal_selected] run tag @s remove heal_selected

