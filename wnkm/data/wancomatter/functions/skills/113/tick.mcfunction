scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
execute as @a[tag=StarBurstStream_using] if score @s playerNumber = #dummy playerNumber run tag @s add user
scoreboard players operation #dummy dummy = @s counter
execute as @a[tag=user] at @s run function wancomatter:skills/113/1
execute if entity @a[tag=user_killed,limit=1] run scoreboard players set @s counter 1000
execute if entity @a[tag=user_killed,limit=1] run tag @a[tag=user_killed] remove user_killed
execute if entity @s[scores={counter=208..}] run tag @a[tag=user] remove StarBurstStream_using
execute if entity @s[scores={counter=208..}] as @a[tag=user] run attribute @s minecraft:generic.attack_damage modifier remove 0-113-0-0-113
tag @a[tag=user] remove user
execute if entity @s[scores={counter=208..}] run kill @s
