execute facing entity @e[tag=081,limit=1,sort=nearest] feet rotated ~ 0 positioned 0.0 0.2 0.0 run summon minecraft:area_effect_cloud ^ ^ ^-1.2 {Tags:["081vector"],Duration:1}
data modify entity @s Motion set from entity @e[tag=081vector,limit=1] Pos
kill @e[tag=081vector]
