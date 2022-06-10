scoreboard players operation #dummy teamNumber = @s teamNumber
execute as @e[scores={maxHP=1..},distance=..50] unless score #dummy teamNumber = @s teamNumber run tag @s add other_team
execute as @a[tag=other_team] if entity @s[gamemode=spectator] run tag @s remove other_team
execute as @a[tag=other_team,tag=!boss] if data entity @s ActiveEffects[{Id:14b}] unless data entity @s ActiveEffects[{Id:25b}] run tag @s remove other_team
execute if entity @e[tag=other_team,limit=1] run function wancomatter:skills/028/select_target_1
execute if entity @e[tag=028flag,limit=1] run function wancomatter:skills/028/shot_main
scoreboard players reset #dummy