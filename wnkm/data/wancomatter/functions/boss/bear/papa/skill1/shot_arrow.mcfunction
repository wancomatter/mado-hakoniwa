summon minecraft:arrow ^ ^1.5 ^2 {Tags:["this","bear_p.s1arrow"],life:1200s,damage:4.0d,Color:5636095,crit:1b}
execute if score #difficult counter matches 2 run data modify entity @e[tag=this,limit=1] damage set value 5.5d
execute if score #difficult counter matches 3 run data modify entity @e[tag=this,limit=1] damage set value 8.0d
execute if score #difficult counter matches 4 run data modify entity @e[tag=this,limit=1] damage set value 11.0d
execute positioned 0.0 0.0 0.0 run summon armor_stand ^ ^-0.2 ^1.6 {Tags:["vector"],Marker:1b,Invisible:1b,NoGravity:1b}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
tag @e[tag=this] remove this