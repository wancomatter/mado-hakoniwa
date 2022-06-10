scoreboard players operation #dummy Cooldown1_max = @s Cooldown1_max
execute as @e[tag=necro_s1skeleton,tag=!necro_s1_priest,scores={HP=..399}] if score @s Cooldown1_max = #dummy Cooldown1_max run tag @s add heal_target
scoreboard players reset #dummy Cooldown1_max
execute unless entity @e[tag=heal_target,limit=1] run scoreboard players set @s counter 0
execute if entity @e[tag=heal_target,limit=1] run scoreboard players add @s counter 1
execute if score @s counter matches 20.. run function wancomatter:boss/necro/skill1/priest/0
execute if entity @e[tag=heal_target,limit=1] run tag @e[tag=heal_target] remove heal_target
