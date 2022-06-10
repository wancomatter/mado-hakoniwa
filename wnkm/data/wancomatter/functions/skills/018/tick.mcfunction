scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=star_feather_p] if score @s playerNumber = @s playerNumber run tag @s add user

scoreboard players add @s counter 1

execute if score @s counter matches ..40 at @a[tag=user] run function wancomatter:skills/018/1
execute if score @s counter matches 41..60 if score @s counter <= @s subcounter2 at @a[tag=user] run function wancomatter:skills/018/2

execute if score @s counter matches 61.. at @a[tag=user] run function wancomatter:skills/018/end
scoreboard players reset #dummy
tag @a[tag=user] remove user
execute if score @s counter matches 61.. run kill @s