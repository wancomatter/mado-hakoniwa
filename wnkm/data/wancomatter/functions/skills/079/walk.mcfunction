execute at @s facing entity @a[tag=owner,limit=1,sort=nearest] feet rotated ~ 0 positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.26 {Tags:["vector"],Duration:1}
data modify entity @s Motion[0] set from entity @e[tag=vector,limit=1] Pos[0]
data modify entity @s Motion[2] set from entity @e[tag=vector,limit=1] Pos[2]
execute store result score @s Cooldown3 run data get entity @s Pos[0] 100
execute store result score @s Cooldown4 run data get entity @s Pos[2] 100
kill @e[tag=vector]
execute if data entity @s {OnGround:1b} run tag @s add 079walked
