tag @s remove other_team
execute facing entity @s feet run function wancomatter:skills/082/select_target_loop
execute if entity @s[tag=082end] run tag @s remove 082end
execute if entity @s[tag=082flag] run tag @e[tag=other_team] remove other_team