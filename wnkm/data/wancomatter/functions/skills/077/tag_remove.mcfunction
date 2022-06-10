scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=p.blood_chain] if score @s playerNumber = #dummy playerNumber run tag @s remove p.blood_chain

summon area_effect_cloud ~ ~ ~ {Tags:["this"],Duration:1}
tag @s add it
execute as @e[tag=bloodchain_hit] run function wancomatter:skills/077/check_uuid
tag @e[tag=this] remove this
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] remove bloodchain_hit
execute if entity @e[tag=hit,limit=1] run tag @e[tag=hit] remove hit
tag @s remove it
scoreboard players reset #dummy
