scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 1..11 run scoreboard players add @s subcounter 1
execute if score @s counter matches 1..11 as @a if score @s playerNumber = #dummy playerNumber run tag @s add now-kusaNagi
execute if score @s counter matches 1..11 as @a[tag=now-kusaNagi] run tp @s @s
execute if score @s counter matches 1..11 run function wancomatter:skills/107/charged/sweep 
execute if score @s counter matches 1..11 run tag @a[tag=now-kusaNagi] remove now-kusaNagi

execute if score @s counter matches 12..25 as @e[tag=kusaNagiSweep-damaged] if data entity @s {HurtTime:1s} run tag @s remove kusaNagiSweep-damaged
execute if score @s counter matches 12..25 as @e[tag=kusaNagiSweep-damaged] if data entity @s {HurtTime:0s} run tag @s remove kusaNagiSweep-damaged

execute if score @s counter matches 25.. run kill @s