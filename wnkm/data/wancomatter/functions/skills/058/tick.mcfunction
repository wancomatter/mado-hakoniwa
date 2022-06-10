scoreboard players add @e[tag=projectile_wall] counter 1
execute at @e[tag=projectile_wall] run particle minecraft:dust 1 1 1 0.6 ~ ~1.4 ~ 0.1 1 0.1 1 3 normal @a
execute at @e[tag=projectile_wall] run particle minecraft:dust 1 1 1 0.6 ~ ~1.4 ~ 0.1 1 0.1 1 1 force @a
execute if entity @e[tag=projectile_wall,scores={counter=200..},limit=1] run kill @e[tag=projectile_wall,scores={counter=200..}]
execute if entity @e[tag=stone-blast-check-projectile-wall,limit=1] as @e[tag=stone-blast-check-projectile-wall] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=projectile_wall,dx=0,dy=0,dz=0,limit=1] run function wancomatter:skills/004/hit-projectile-wall
execute if entity @e[tag=item_bullet,limit=1] as @e[tag=item_bullet] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=projectile_wall,dx=0,dy=0,dz=0,limit=1] run function wancomatter:skills/item_bullet/projectile_wall
execute if entity @e[tag=stone_pillar,limit=1] as @e[tag=stone_pillar] at @s positioned ~-0.1 ~0.1 ~-0.1 if entity @e[tag=projectile_wall,dx=0,dy=0,dz=0,limit=1] positioned ~-0.8 ~0.8 ~-0.8 if entity @e[tag=projectile_wall,dx=0,dy=0,dz=0,limit=1] run kill @s
