particle minecraft:soul_fire_flame ~ ~ ~ 1.6 0.1 1.6 0.2 170 normal @a

tag @s add now
execute as @e[distance=..4,scores={maxHP=1..},tag=!projectile_wall] unless score @s teamNumber = @e[tag=now,limit=1,sort=nearest] teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @a if score @s playerNumber = @e[tag=now,limit=1,sort=nearest] playerNumber run tag @s add user
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/082/hit
execute if entity @a[tag=user,limit=1] run tag @a[tag=user] remove user
tag @s remove now
scoreboard players set @s subcounter2 0