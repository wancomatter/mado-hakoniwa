scoreboard players add @s counter 1
scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add now-manaGun
scoreboard players set @s subcounter 0
function wancomatter:skills/086/tick2
tag @s remove now-manaGun
scoreboard players reset #dummy

execute if score @s counter matches 25 run function wancomatter:skills/086/end
execute if score @s counter matches 25.. run kill @s
