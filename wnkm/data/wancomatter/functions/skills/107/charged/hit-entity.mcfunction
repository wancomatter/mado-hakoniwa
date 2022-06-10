scoreboard players operation #dummy playerNumber = @s playerNumber
execute rotated as @e[tag=now-kusaNagiSweep,limit=1,sort=nearest] positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^2 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["discharge2"]}
execute at @e[tag=kusaNagiSweep-hit,tag=!kusaNagiSweep-damaged,limit=1,sort=nearest] rotated as @e[tag=now-kusaNagiSweep,limit=1,sort=nearest] rotated ~ 0 positioned as @s anchored eyes positioned ^ ^ ^-1 run summon arrow ~ ~ ~ {life:1200s,damage:5.0d,Color:-1,Motion:[0.0d,0.0d,0.0d],Tags:["discharge","107arrow"],CustomPotionEffects:[{Id:25,Amplifier:17,Duration:3}]}
data modify entity @e[tag=discharge,limit=1] Motion[0] set from entity @e[tag=discharge2,limit=1] Pos[0]
data modify entity @e[tag=discharge,limit=1] Motion[2] set from entity @e[tag=discharge2,limit=1] Pos[2]
summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["discharge2"]}
execute at @e[tag=discharge2] at @e[tag=discharge2] at @e[tag=discharge2] at @e[tag=discharge2] at @e[tag=discharge2] at @e[tag=discharge2] at @e[tag=kusaNagiSweep-hit,tag=!kusaNagiSweep-damaged,limit=1,sort=nearest] rotated as @e[tag=now-kusaNagiSweep,limit=1,sort=nearest] rotated ~ 0 run summon minecraft:slime ^ ^ ^-0.35 {Size:0,NoAI:1b,DeathTime:17s,Silent:1b,Tags:["107slime"],ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:0b}]}
execute as @a if score @s playerNumber = #dummy playerNumber run data modify entity @e[tag=discharge,limit=1] Owner set from entity @s UUID
kill @e[tag=discharge2]
tag @e[tag=discharge] remove discharge
schedule function wancomatter:skills/107/charged/schedule 2t replace
tag @e[tag=kusaNagiSweep-hit,tag=!kusaNagiSweep-damaged] add kusaNagiSweep-damaged
scoreboard players reset #dummy