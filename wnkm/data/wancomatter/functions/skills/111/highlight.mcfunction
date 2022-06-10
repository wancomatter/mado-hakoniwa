summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["discharge"]}
execute anchored eyes run tp @e[tag=discharge,limit=1] ^ ^ ^ ~ ~
scoreboard players set #dummy counter 0
execute as @e[tag=discharge,limit=1] at @s run function wancomatter:skills/111/move
scoreboard players reset #dummy counter
#execute as @e[tag=discharge,limit=1] at @s positioned ^ ^ ^0.8 if block ~ ~ ~ #wancomatter:putable align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.8
#execute as @e[tag=discharge,limit=1] at @s positioned ^ ^ ^0.4 if block ~ ~ ~ #wancomatter:putable align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.4
#execute as @e[tag=discharge,limit=1] at @s positioned ^ ^ ^0.2 if block ~ ~ ~ #wancomatter:putable align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.2
#execute as @e[tag=discharge,limit=1] at @s positioned ^ ^ ^0.1 if block ~ ~ ~ #wancomatter:putable align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.1
execute as @e[tag=discharge,limit=1] at @s positioned ^ ^ ^0.05 if block ~ ~ ~ #wancomatter:putable align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.05
execute as @e[tag=discharge,limit=1] at @s positioned ^ ^ ^0.025 if block ~ ~ ~ #wancomatter:putable align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.025
execute as @e[tag=discharge,limit=1] at @s positioned ^ ^ ^0.0125 if block ~ ~ ~ #wancomatter:putable align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.0125
execute as @e[tag=discharge,limit=1] at @s positioned ^ ^ ^0.00625 if block ~ ~ ~ #wancomatter:putable align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.00625
execute as @e[tag=discharge,limit=1] at @s positioned ^ ^ ^0.003125 if block ~ ~ ~ #wancomatter:putable align xyz unless entity @e[type=shulker,dx=0,dy=0,dz=0] at @s run tp @s ^ ^ ^0.003125
execute at @e[tag=discharge,tag=111-hit-block] align xyz if entity @e[type=!armor_stand,type=!area_effect_cloud,tag=!projectile,dx=0,dy=0,dz=0] run tag @e[tag=discharge,tag=111-hit-block] remove 111-hit-block
execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~0.5 ~1 ~ 0.3 0 0 1 1 force @s
execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~0.5 ~1 ~1 0.3 0 0 1 1 force @s
execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~0.5 ~ ~ 0.3 0 0 1 1 force @s
execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~0.5 ~ ~1 0.3 0 0 1 1 force @s

execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~1 ~1 ~0.5 0 0 0.3 1 1 force @s
execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~ ~1 ~0.5 0 0 0.3 1 1 force @s
execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~1 ~ ~0.5 0 0 0.3 1 1 force @s
execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~ ~ ~0.5 0 0 0.3 1 1 force @s

execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~ ~0.5 ~ 0 0.3 0 1 1 force @s
execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~ ~0.5 ~1 0 0.3 0 1 1 force @s
execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~1 ~0.5 ~1 0 0.3 0 1 1 force @s
execute at @e[tag=discharge,tag=111-hit-block] align xyz run particle dust 1 1 1 0.5 ~1 ~0.5 ~ 0 0.3 0 1 1 force @s
kill @e[tag=discharge]