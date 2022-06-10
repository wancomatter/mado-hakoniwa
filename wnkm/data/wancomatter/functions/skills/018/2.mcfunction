#scoreboard players operation @s dummy = @s counter
#scoreboard players operation @s dummy %= #2 counter
#execute unless score @s dummy matches 1 run function wancomatter:skills/018/summon_star

execute if score @s Mana matches 9.. run function wancomatter:skills/018/2_3

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

scoreboard players operation @s dummy = @s subcounter
execute positioned ^ ^ ^0.8 if block ~ ~1 ~ #wancomatter:air positioned ^ ^ ^-0.3 if block ~ ~ ~ #wancomatter:air run function wancomatter:skills/018/2_loop

execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/018/hit2
scoreboard players reset #dummy