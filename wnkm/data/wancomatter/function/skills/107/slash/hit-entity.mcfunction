execute rotated as @e[tag=now-kusaSlash,limit=1,sort=nearest] positioned 0.0 0.0 0.0 rotated ~ 0 run summon armor_stand ^ ^ ^2 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["discharge2","wnkm.owned","wnkm.round"]}
execute at @e[tag=kusaSlash-hit] rotated as @e[tag=now-kusaSlash,limit=1,sort=nearest] rotated ~ 0 anchored eyes positioned ^ ^ ^-1 run summon arrow ~ ~ ~ {Color:-1,CustomPotionEffects:[{Amplifier:80,Duration:1,Id:25}],Motion:[0.0d,0.0d,0.0d],PierceLevel:127b,Tags:["discharge","wnkm.owned","wnkm.round"],damage:5.9d,item:{components:{"minecraft:custom_data":{CustomPotionColor:-1,custom_potion_effects:[{amplifier:80,duration:1,id:"minecraft:levitation"}]}},count:1,id:"minecraft:arrow"},life:1200s}
data modify entity @e[tag=discharge,limit=1] Motion set from entity @e[tag=discharge2,limit=1] Pos
data modify entity @e[tag=discharge,limit=1] Owner set from entity @a[tag=now-kusaSlash,limit=1] UUID
kill @e[tag=discharge2]
tag @e[tag=discharge] remove discharge
tag @e[tag=kusaSlash-hit] remove kusaSlash-hit
