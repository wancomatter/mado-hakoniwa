execute store result score #- counter run data modify entity @e[tag=it,limit=1] data.tmp[87] set from entity @s UUID
execute if score #- counter matches 0 run tag @s remove hit2

execute if entity @s[tag=hit2] if data entity @e[tag=it,limit=1] data.tmp[88] run function wancomatter:general/hitlist/89