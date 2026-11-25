scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add now-b1s5razer
function wancomatter:boss/detonator/skill5/razer
tag @s remove now-b1s5razer
scoreboard players reset #dummy
execute as @e[tag=detonator] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.3d
