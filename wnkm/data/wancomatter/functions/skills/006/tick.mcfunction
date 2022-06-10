scoreboard players add @s counter 1
execute if score @s counter matches 5 run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 5 as @a if score @s playerNumber = #dummy playerNumber run tag @s add now-heathaze
execute if score @s counter matches 5 as @a[tag=now-heathaze] at @s run function wancomatter:skills/006/attack
execute if score @s counter matches 5 at @s as @a[tag=now-heathaze] run function wancomatter:skills/006/attack
execute if score @s counter matches 5 at @s run function wancomatter:skills/006/extinguish
execute if score @s counter matches 5.. run kill @s