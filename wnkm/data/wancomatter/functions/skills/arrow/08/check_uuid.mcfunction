data modify entity @e[tag=this,limit=1] Owner set from entity @e[tag=it,limit=1] Owner
execute store success score @e[tag=this,limit=1] counter run data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
execute if score @e[tag=this,limit=1] counter matches 0 run tag @s add hit
execute if entity @e[tag=hit,limit=1] run tag @e[tag=this] remove this