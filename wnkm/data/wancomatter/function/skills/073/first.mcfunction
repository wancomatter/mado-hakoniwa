scoreboard players operation #dummy teamNumber = @s teamNumber
tag @e[distance=0.01..10,scores={maxHP=1..}] add hit
execute unless score @s sneak matches 1.. as @e[tag=hit] if score @s teamNumber = #dummy teamNumber run tag @s remove hit
execute if score @s sneak matches 1.. as @e[tag=hit] unless score @s teamNumber = #dummy teamNumber run tag @s remove hit
execute unless entity @e[tag=hit,limit=1] run function wancomatter:skills/073/fail1
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/073/hit_first
