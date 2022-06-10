execute as @e[tag=other_team,limit=1,sort=nearest] run function wancomatter:skills/028/select_target_2
execute if entity @e[tag=other_team,limit=1] run function wancomatter:skills/028/select_target_1
