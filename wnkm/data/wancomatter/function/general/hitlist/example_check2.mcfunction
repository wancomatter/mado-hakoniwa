tellraw @a ["",{"text":"段階2(半径10m)"}]

scoreboard players operation #- playerNumber = @s playerNumber
scoreboard players operation #- teamNumber = @s teamNumber
execute as @e[scores={maxHP=1..},distance=..10.0] unless score @s teamNumber = #- teamNumber run tag @s add hit1
execute if entity @e[tag=hit1,limit=1] run tag @s add it
execute if entity @s[tag=it] run function wancomatter:general/hitlist/check
execute if entity @e[tag=hit2,limit=1] as @e[tag=hit2] at @s run function wancomatter:general/hitlist/example_hit
execute if entity @s[tag=it] run tag @s remove it

scoreboard players reset #-
