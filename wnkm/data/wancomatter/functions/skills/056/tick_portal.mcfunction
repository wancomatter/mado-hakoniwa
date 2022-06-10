particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 1 1 normal @a
particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 1 1 force @a
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[gamemode=!spectator,dx=0,dy=0,dz=0,limit=1] run function wancomatter:skills/056/use_portal_root

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players set @s subcounter 0
tag @s add it
execute as @e[tag=portal_hitbox] if score @s playerNumber = #dummy playerNumber run scoreboard players add @e[tag=it,limit=1] subcounter 1
tag @s remove it
execute unless score @s[tag=!kill] subcounter matches 2.. run function wancomatter:skills/056/break_portal
