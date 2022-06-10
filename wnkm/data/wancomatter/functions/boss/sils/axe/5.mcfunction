tp @s ~ ~ ~ ~-30 ~
execute at @s run summon armor_stand ^-2 ^0.9 ^0.5 {Tags:["sils_axe2"],Marker:1b,Invisible:1b,NoGravity:1b}
execute facing entity @a[sort=nearest,limit=1,distance=2..24,scores={maxHP=1..}] feet positioned 0.0 0.0 0.0 rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^0.33 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
data modify entity @s Motion set from entity @e[tag=vector,x=0,y=0,z=0,limit=1,sort=nearest] Pos
kill @e[tag=vector]
