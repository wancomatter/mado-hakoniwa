data modify entity @e[tag=179this,limit=1] Owner set from entity @e[tag=179,limit=1] Owner
execute store success score @e[tag=179this,limit=1] counter run data modify entity @e[tag=179this,limit=1] Owner set from entity @s UUID
execute if score @e[tag=179this,limit=1] counter matches 0 run tag @s add hit
#tag @e[tag=179this] remove 179this