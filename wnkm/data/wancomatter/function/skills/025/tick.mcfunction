scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
scoreboard players set @s subcounter 0
function wancomatter:skills/025/tick2
scoreboard players reset #dummy

execute if score @s counter matches 25 run function wancomatter:skills/025/end
execute if score @s counter matches 25.. run kill @s
