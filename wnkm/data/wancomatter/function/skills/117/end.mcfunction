tag @s add this2
execute as @e[tag=blue_moon,scores={counter=..229}] if score @s playerNumber = #dummy playerNumber run tag @e[tag=this2] add no_blue_moon
tag @s remove this2
execute unless entity @s[tag=no_blue_moon] as @a[tag=this] run function wancomatter:skills/117/end2
