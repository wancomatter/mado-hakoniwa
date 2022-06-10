scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=buff_lightning_p] if score @s playerNumber = @s playerNumber run tag @s add user

scoreboard players add @s counter 1
execute if score @s counter matches ..24 at @a[tag=user] run function wancomatter:skills/075/1
execute if score @s counter matches 25 at @a[tag=user] run function wancomatter:skills/075/2
execute if score @s counter matches 25.. positioned as @a[tag=user] run function wancomatter:skills/075/3

execute if score @s counter matches 225.. at @a[tag=user] run function wancomatter:skills/075/end
scoreboard players reset #dummy
tag @a[tag=user] remove user
execute if score @s counter matches 225.. run kill @s