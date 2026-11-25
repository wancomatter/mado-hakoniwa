summon minecraft:arrow ^ ^1.5 ^2 {Color:5636095,Tags:["this","bear_p.s1arrow","wnkm.owned","wnkm.round"],crit:1b,damage:4.0d,item:{components:{"minecraft:custom_data":{CustomPotionColor:5636095}},count:1,id:"minecraft:arrow"},life:1200s}
execute if score #difficult counter matches 2 run data modify entity @e[tag=this,limit=1] damage set value 5.5d
execute if score #difficult counter matches 3 run data modify entity @e[tag=this,limit=1] damage set value 8.0d
execute if score #difficult counter matches 4 run data modify entity @e[tag=this,limit=1] damage set value 11.0d
execute positioned 0.0 0.0 0.0 run summon armor_stand ^ ^-0.2 ^1.6 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["vector","wnkm.owned","wnkm.round"]}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
tag @e[tag=this] remove this
