scoreboard players add @s counter 1
tp @s ~ ~ ~ ~17 ~
execute if score @s counter matches 6..20 run scoreboard players operation #dummy playerNumber = @s playerNumber
execute if score @s counter matches 6..20 as @a if score @s playerNumber = #dummy playerNumber positioned as @s run function wancomatter:skills/054/repeat
execute if score @s counter matches 20 as @a if score @s playerNumber = #dummy playerNumber positioned as @s run function wancomatter:skills/054/end
execute if score @s counter matches 6..20 run scoreboard players reset #dummy
execute if score @s counter matches 20.. run kill @s