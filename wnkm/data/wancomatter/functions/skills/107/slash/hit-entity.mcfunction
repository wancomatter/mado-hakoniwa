execute rotated as @e[tag=now-kusaSlash,limit=1,sort=nearest] positioned 0.0 0.0 0.0 rotated ~ 0 run summon armor_stand ^ ^ ^2 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["discharge2"]}
execute at @e[tag=kusaSlash-hit] rotated as @e[tag=now-kusaSlash,limit=1,sort=nearest] rotated ~ 0 anchored eyes positioned ^ ^ ^-1 run summon arrow ~ ~ ~ {life:1200s,damage:5.9d,Color:-1,PierceLevel:127b,Motion:[0.0d,0.0d,0.0d],Tags:["discharge"],CustomPotionEffects:[{Id:25,Amplifier:80,Duration:1}]}
data modify entity @e[tag=discharge,limit=1] Motion set from entity @e[tag=discharge2,limit=1] Pos
data modify entity @e[tag=discharge,limit=1] Owner set from entity @a[tag=now-kusaSlash,limit=1] UUID
kill @e[tag=discharge2]
tag @e[tag=discharge] remove discharge
tag @e[tag=kusaSlash-hit] remove kusaSlash-hit