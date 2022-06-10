execute if entity @s[tag=antares_bit_big] run playsound minecraft:block.glass.break master @a ~ ~1 ~ 1 0.5
execute unless entity @s[tag=antares_bit_big] run particle minecraft:cloud ~ ~0.9 ~ 0.1 0.1 0.1 0.5 50 normal @a
execute if entity @s[tag=antares_bit_big] positioned ~ ~0.3 ~ run particle minecraft:cloud ~ ~0.9 ~ 0.1 0.1 0.1 0.5 50 force @a

tag @s add it
execute as @e[tag=antares_bit,tag=!it] if score @s playerNumber = @e[limit=1,sort=nearest,tag=it] playerNumber run tag @e[limit=1,sort=nearest,tag=it] add flag
tag @s remove it
execute unless entity @s[tag=flag] run tag @a[tag=user] remove antares_using
tag @a[tag=user] remove user
kill @s