tag @s remove other_team
execute facing entity @s feet run function wancomatter:skills/028/select_target_loop
execute if entity @s[tag=028flag] run tag @e[tag=other_team] remove other_team