scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=short_teleport_p] if score @s playerNumber = #dummy playerNumber run tag @s add this
execute as @e[type=area_effect_cloud,distance=..15,tag=short_teleport2] if score @s playerNumber = #dummy playerNumber run tag @s add this2

#ブロックすり抜け対策
function wancomatter:skills/038/anti_block
execute unless entity @a[tag=this,distance=..15,limit=1] run tag @s add in_block
execute unless entity @s[tag=in_block] as @a[tag=this] at @s run tp @e[tag=this2] ~ ~ ~
execute if entity @s[tag=in_block] as @a[tag=this] at @e[tag=this2] run tp @s ~ ~ ~
tag @e[tag=this2] remove this2

execute unless entity @a[tag=this,distance=..11,limit=1] run scoreboard players set @s counter 30
execute if score @s counter matches 30.. as @a[tag=this] run function wancomatter:skills/038/tp
tag @e[tag=this] remove this
execute if score @s counter matches 30.. run kill @s