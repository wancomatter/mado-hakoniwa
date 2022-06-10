summon area_effect_cloud ~ ~ ~ {Tags:["this"],Duration:1}
tag @s add it
execute as @e[tag=lightning_arrow_hit] run function wancomatter:skills/arrow/08/check_uuid
tag @e[tag=this] remove this
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/arrow/08/hit2
tag @s remove it



kill @s