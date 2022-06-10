tag @s add this2
execute as @e[tag=morning_star,scores={counter=..39}] if score @s playerNumber = #dummy playerNumber run tag @e[tag=this2] add no_morning_star
tag @s remove this2
execute unless entity @s[tag=no_morning_star] as @a[tag=this] run function wancomatter:skills/043/end2