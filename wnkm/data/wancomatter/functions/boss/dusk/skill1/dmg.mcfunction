#scoreboard players set @e[tag=hit] damageTaken 150
#scoreboard players set @e[tag=hit] hurtByNumber -41
#advancement grant @a[tag=hit] only wancomatter:general/armor_resistable
execute as @e[tag=hit,limit=1,sort=nearest] if entity @e[distance=0.01..,tag=hit,limit=1] run tag @e[distance=0.01..,tag=hit] remove hit
execute rotated as @s positioned 0 0 0 rotated ~ 0 run summon armor_stand ^ ^ ^2 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["vector"]}
execute rotated as @s rotated ~ 0 positioned as @e[tag=this,limit=1] anchored eyes positioned ^ ^ ^-1 run summon arrow ~ ~ ~ {life:1200s,damage:4.8d,Color:-1,Motion:[0.0d,0.0d,0.0d],Tags:["this2","b2lance"]}
data modify entity @e[tag=this2,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
execute if score #difficult counter matches 2 run data modify entity @e[tag=this2,limit=1] damage set value 5.5d
execute if score #difficult counter matches 3 run data modify entity @e[tag=this2,limit=1] damage set value 6.5d
execute if score #difficult counter matches 4 run data modify entity @e[tag=this2,limit=1] damage set value 8.0d
tag @e[tag=this2] remove this2
tag @e[tag=hit] remove hit
tag @s add hit-already