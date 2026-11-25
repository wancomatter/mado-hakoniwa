# 既存の命中済みUUIDリストの終端。
execute store result score #- counter run data modify entity @e[tag=it,limit=1] data.tmp[128] set from entity @s UUID
execute if score #- counter matches 0 run tag @s remove hit2
