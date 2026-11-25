tag @s remove antares_bit
tag @s add antares_bit_shot
scoreboard players set @s counter 0
execute as @e[tag=antares_bit,tag=!antares_bit_shot] if score @s playerNumber = @a[tag=user,limit=1] playerNumber run tag @s add flag
execute unless entity @e[tag=flag,limit=1] run tag @a[tag=user] remove antares_using
tag @e[tag=flag] remove flag

execute at @a[tag=user] run tp @s ~ ~0.4 ~ ~ ~
execute if entity @s[tag=antares_bit_r] at @s positioned ~ ~0.3 ~ run tp @s ^-0.5 ^ ^ ~2 ~
execute if entity @s[tag=antares_bit_l] at @s positioned ~ ~0.3 ~ run tp @s ^0.5 ^ ^ ~-2 ~
