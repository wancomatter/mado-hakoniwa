execute if entity @s[tag=102skeleton_throw_pot] run function wancomatter:skills/059/5
execute unless score @s counter matches 141.. run scoreboard players add @s counter 1
execute unless score @s Cooldown1 matches 141.. run scoreboard players add @s Cooldown1 1
execute unless score @s Cooldown2 matches 101.. run scoreboard players add @s Cooldown2 1
scoreboard players operation #dummy teamNumber = @s teamNumber
execute if entity @s[scores={Cooldown1=140..}] if entity @e[distance=7..15,limit=1,scores={maxHP=1..}] as @e[distance=7..15,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add 102target2
execute if entity @s[scores={counter=..139,Cooldown2=100..}] if entity @e[distance=..4,limit=1,scores={maxHP=1..}] as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add 102target3
execute if entity @s[scores={counter=140..}] if entity @e[distance=..6,limit=1,scores={maxHP=1..}] as @e[distance=..6,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add 102target
execute if entity @e[tag=102target3,limit=1] run function wancomatter:skills/059/8
execute if entity @e[tag=102target2,limit=1] run function wancomatter:skills/059/7
execute if entity @e[tag=102target,limit=1] run function wancomatter:skills/059/4
scoreboard players reset #dummy

