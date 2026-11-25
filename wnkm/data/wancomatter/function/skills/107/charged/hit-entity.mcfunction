scoreboard players operation #dummy playerNumber = @s playerNumber
execute rotated as @e[tag=now-kusaNagiSweep,limit=1,sort=nearest] positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^2 {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["discharge2","wnkm.owned","wnkm.round"]}
execute at @e[tag=kusaNagiSweep-hit,tag=!kusaNagiSweep-damaged,limit=1,sort=nearest] rotated as @e[tag=now-kusaNagiSweep,limit=1,sort=nearest] rotated ~ 0 positioned as @s anchored eyes positioned ^ ^ ^-1 run summon arrow ~ ~ ~ {Color:-1,CustomPotionEffects:[{Amplifier:17,Duration:3,Id:25}],Motion:[0.0d,0.0d,0.0d],Tags:["discharge","107arrow","wnkm.owned","wnkm.round"],damage:5.0d,item:{components:{"minecraft:custom_data":{CustomPotionColor:-1,custom_potion_effects:[{amplifier:17,duration:3,id:"minecraft:levitation"}]}},count:1,id:"minecraft:arrow"},life:1200s}
data modify entity @e[tag=discharge,limit=1] Motion[0] set from entity @e[tag=discharge2,limit=1] Pos[0]
data modify entity @e[tag=discharge,limit=1] Motion[2] set from entity @e[tag=discharge2,limit=1] Pos[2]
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["discharge2","wnkm.owned","wnkm.round"]}
execute at @e[tag=discharge2] at @e[tag=discharge2] at @e[tag=discharge2] at @e[tag=discharge2] at @e[tag=discharge2] at @e[tag=discharge2] at @e[tag=kusaNagiSweep-hit,tag=!kusaNagiSweep-damaged,limit=1,sort=nearest] rotated as @e[tag=now-kusaNagiSweep,limit=1,sort=nearest] rotated ~ 0 run summon minecraft:slime ^ ^ ^-0.35 {ActiveEffects:[{Duration:2147483647,Id:14,ShowParticles:0b}],DeathTime:17s,NoAI:1b,Silent:1b,Size:0,Tags:["107slime","wnkm.owned","wnkm.round"],active_effects:[{duration:2147483647,id:"minecraft:invisibility",show_particles:0b}]}
execute as @a if score @s playerNumber = #dummy playerNumber run data modify entity @e[tag=discharge,limit=1] Owner set from entity @s UUID
kill @e[tag=discharge2]
tag @e[tag=discharge] remove discharge
schedule function wancomatter:skills/107/charged/schedule 2t replace
tag @e[tag=kusaNagiSweep-hit,tag=!kusaNagiSweep-damaged] add kusaNagiSweep-damaged
scoreboard players reset #dummy
