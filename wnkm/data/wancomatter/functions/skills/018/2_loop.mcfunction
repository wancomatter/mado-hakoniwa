scoreboard players add @s Cooldown1 1
execute if score @s Mana matches 4..8 if score @s Cooldown1 matches 3 run function wancomatter:skills/018/summon_star3
execute unless score @s Mana matches 9.. if score @s Cooldown1 matches 6.. run function wancomatter:skills/018/summon_star
execute if score @s Mana matches 9.. if score @s Cooldown1 matches 3.. run function wancomatter:skills/018/summon_star5
execute if score @s Mana matches 9.. run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 2.3 30 normal @a
execute if score @s Mana matches 9.. run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 2.3 6 force @a

execute if score @s Mana matches ..2 run function wancomatter:skills/018/3_0
execute if score @s Mana matches 3..5 run function wancomatter:skills/018/3_1
execute if score @s Mana matches 6..8 run function wancomatter:skills/018/3_2
execute if score @s Mana matches 9.. run function wancomatter:skills/018/3_3

scoreboard players remove @s dummy 1
tp @a[tag=user] ~ ~ ~
execute if score @s dummy matches 1.. positioned ^ ^ ^0.8 if block ~ ~1 ~ #wancomatter:air positioned ^ ^ ^-0.3 if block ~ ~ ~ #wancomatter:air run function wancomatter:skills/018/2_loop
